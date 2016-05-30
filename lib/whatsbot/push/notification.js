/**
 * @title: Notification title
 * @picture: Picture to show in notification
 * @message: Notification body
 */
(function(title, picture, message) {
  if (!window.Notification) {
    console.log('Your browser do not support notifications');
  } else {
    dispatchNotification(title, picture, message);
  }

  function dispatchNotification(title, picture, message) {
    var permission = Notification.permission;

    switch(permission) {
      case 'granted':
        createNotification();
      break;
      default:
        Notification.requestPermission(function(permission) {
          if (permission === 'granted') {
            createNotification();
          }
        });
    }

    function createNotification() {
      return new Notification(title, {
        body: message,
        icon: picture
      });
    }
  }
}(arguments[0], arguments[1], arguments[2]));
