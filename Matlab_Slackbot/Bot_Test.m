function[] = Bot_Test()
% Created on 03/07/2018
% Updates

% Testing incoming webhooks for JSON command

%%
hook_link='https://hooks.slack.com/services/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';

% - Create a message attachment to send with a notification
%   (optional; several message attachments can be sent with a single notification)
sA = MakeSlackAttachment('New open task [urgent]: <google.com>', 'Text of the notification message', ...
      'Text that will be displayed before the message', '#0000ff', ...
     {'Test 1', 'This is a field that will be shown in a table'});

% - Send the notification, with the attached message
SendSlackNotification(hook_link, ...
   'I sent this notification from MATLAB, on behalf of Yagnya Patel.', '#bot_test', ...
   'Behavior Rig Bot', 'http://www.pvhc.net/img27/awbgpcfkuwxixldjoown.png');

end