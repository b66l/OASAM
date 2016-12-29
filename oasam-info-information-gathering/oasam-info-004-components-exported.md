
#OASAM-INFO-004: Components exported

##Description:
Application components can be exported if the flag ‘exported’ on AndroidManifest is enabled. When a component is exported, it can be launched from any application in the device.


##Risks:
If the component’s functionality is sensitive or needs permissions that have been enable in the application, an improperly exported component could allow executing such sensitive functionality from other application through its launching.


##Recommendations:
It is recommended to export the components only when it is strictly necessary. While exporting a component, it is recommended to set permission, so the launch will need an extra security degree.


##References:
1. http://developer.android.com/guide/topics/manifest/activity-element.html?q=android%3Aexported#exported
