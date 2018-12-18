####################  Start of Script ############################
## This script template was developed by Bryant Avey. If you have questions just ask Bryant@InterNuntius.com (612)719-1174

## Make a theme using the Office UI Fabric Theme Generator at: https://developer.microsoft.com/en-us/fabric#/styles/themegenerator 
## Complete instructions for this procedure can be found at: http://www.wictorwilen.se/finally-proper-custom-themes-in-sharepoint-online 

## Make the connection to the admin site
connect-SPOService -URL https://hennepinpe-admin.sharepoint.com #-credential first.last@hennepinpe.us #Leaving blank credentials prompts you

## Remove Custom Themes NOTE: Run these by themselves and let it process a minute befor running the add-spotheme
Remove-SPOTheme -Name "Hennepin Blue"
Remove-SPOTheme -Name "HC Blue Accent Dark"
Remove-SPOTheme -Name "HC Warm Red"
Remove-SPOTheme -Name "HC Green Rich Purple Dark"

################### Hide / Unhide Default Themes #####################
## Alternative, after you've added in all your themes, you can hide the default themes so they aren't available to site owners.
#Set-HideDefaultThemes -HideDefaultThemes:$true

## If you want the default ones back you just fire off this:
# Set-HideDefaultThemes -HideDefaultThemes:$false
###########################Description of the process############################################

## While the theme builder has a great feature that allows you to export the PowerShell settings required to create your theme, 
## it does not really work (at least not in the builder and the shell versions that exists at the time of writing this blog post). 
## The theme builder PowerShell generates a Hashtable but the PowerShell command requires a Dictionary object, so here's a quick way to do that conversion 
## (until they fix the builder and/or the cmdlet). 

    # $builder = [paste the PowerShell code from the builder here]
    # $theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
    # $builder.Keys | %{$theme.Add($_, $builder[$_])}

## Now, that we have a PowerShell variable with our Theme we can use the Add-SPOTheme cmdlet to add our theme, like this:
    # Add-SPOTheme -Name "ICS Purple" -Palette $theme -IsInverted:$false

## We can in the same way add more themes, and when we don’t want them anymore we can use the Remove-SPOTheme cmdlet. 
## There’s also a Get-SPOTheme cmdlet that allows you to get a theme by name, unfortunately it is not possible to use that cmdlet without any parameters and list all available ones (feedback SP Team, feedback).
## The IsInverted flag is used for dark theme (true) and light theme (false, so SharePoint knows when to render light text on top of dark and vice versa.

####################### HC Themes #######################

########################## Begin Hennepin Blue ####################################
# $builder = [paste the PowerShell code from the builder here]
$builder = @{
    "themePrimary" = "#0068b2";
    "themeLighterAlt" = "#f2f8fc";
    "themeLighter" = "#cce3f3";
    "themeLight" = "#a2cbe8";
    "themeTertiary" = "#549dd1";
    "themeSecondary" = "#1777bc";
    "themeDarkAlt" = "#005ea1";
    "themeDark" = "#004f88";
    "themeDarker" = "#6f9bba";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#e8c1c1";
    "neutralSecondary" = "#d18b8b";
    "neutralPrimaryAlt" = "#bc5f5f";
    "neutralPrimary" = "#461515";
    "neutralDark" = "#883c3c";
    "black" = "#642c2c";
    "white" = "#ffffff";
    }
    $theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
    $builder.Keys | %{$theme.Add($_, $builder[$_])}
    
    ## Now, that we have a PowerShell variable with our Theme we can use the Add-SPOTheme cmdlet to add our theme, like this:
    Add-SPOTheme -Name "Hennepin Blue" -Palette $theme -IsInverted:$false
    
    ########################## End Hennepin Blue ####################################
    
    ########################## Begin HC Blue Accent Dark ####################################
    ## Dark themes use Body Text of b8b8b8 (184, 184, 184) and body background of 505050 (80, 80, 80)
    
    $builder = @{
        "themePrimary" = "#44c8f5";
        "themeLighterAlt" = "#03080a";
        "themeLighter" = "#0b2027";
        "themeLight" = "#153c49";
        "themeTertiary" = "#297893";
        "themeSecondary" = "#3cb1d7";
        "themeDarkAlt" = "#57cef6";
        "themeDark" = "#70d5f7";
        "themeDarker" = "#95e0f9";
        "neutralLighterAlt" = "#16416d";
        "neutralLighter" = "#1b4773";
        "neutralLight" = "#24507c";
        "neutralQuaternaryAlt" = "#2a5682";
        "neutralQuaternary" = "#2f5b87";
        "neutralTertiaryAlt" = "#47719b";
        "neutralTertiary" = "#e9e1de";
        "neutralSecondary" = "#ece6e3";
        "neutralPrimaryAlt" = "#f0ebe9";
        "neutralPrimary" = "#ded3ce";
        "neutralDark" = "#f7f5f3";
        "black" = "#fbfaf9";
        "white" = "#113c66";
        "bodyBackground" = "#113c66";
        "bodyText" = "#ded3ce";
        }
    $theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
    $builder.Keys | %{$theme.Add($_, $builder[$_])}
    
    ## Now, that we have a PowerShell variable with our Theme we can use the Add-SPOTheme cmdlet to add our theme, like this:
    Add-SPOTheme -Name "HC Blue Accent Dark" -Palette $theme -IsInverted:$true
    
  ########################## End HC Blue Accent Dark ####################################

########################## Begin HC Warm Red ####################################
   # $builder = [paste the PowerShell code from the builder here]
$builder = @{
    "themePrimary" = "#ce1432";
    "themeLighterAlt" = "#fdf4f5";
    "themeLighter" = "#f7d4da";
    "themeLight" = "#f0b0ba";
    "themeTertiary" = "#e2687c";
    "themeSecondary" = "#d42c48";
    "themeDarkAlt" = "#ba132e";
    "themeDark" = "#9d1027";
    "themeDarker" = "#740c1d";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#595959";
    "neutralSecondary" = "#373737";
    "neutralPrimaryAlt" = "#2f2f2f";
    "neutralPrimary" = "#000000";
    "neutralDark" = "#151515";
    "black" = "#0b0b0b";
    "white" = "#ffffff";
    "bodyBackground" = "#ffffff";
    "bodyText" = "#000000";
    }
    $theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
    $builder.Keys | %{$theme.Add($_, $builder[$_])}
    
    ## Now, that we have a PowerShell variable with our Theme we can use the Add-SPOTheme cmdlet to add our theme, like this:
    Add-SPOTheme -Name "HC Warm Red" -Palette $theme -IsInverted:$false
    
    ## Dark themes use Body Text of b8b8b8 (184, 184, 184) and body background of 505050 (80, 80, 80)

########################## Begin HC Green Rich Purple Dark ####################################    
    $builder = @{
        "themePrimary" = "#cbdb2a";
        "themeLighterAlt" = "#080902";
        "themeLighter" = "#212307";
        "themeLight" = "#3d420d";
        "themeTertiary" = "#7b8419";
        "themeSecondary" = "#b4c125";
        "themeDarkAlt" = "#d1df3c";
        "themeDark" = "#d8e458";
        "themeDarker" = "#e2eb80";
        "neutralLighterAlt" = "#451659";
        "neutralLighter" = "#4b1a60";
        "neutralLight" = "#55236b";
        "neutralQuaternaryAlt" = "#5c2872";
        "neutralQuaternary" = "#612d77";
        "neutralTertiaryAlt" = "#78458e";
        "neutralTertiary" = "#c8c8c8";
        "neutralSecondary" = "#d0d0d0";
        "neutralPrimaryAlt" = "#dadada";
        "neutralPrimary" = "#ffffff";
        "neutralDark" = "#f4f4f4";
        "black" = "#f8f8f8";
        "white" = "#3e1151";
        "bodyBackground" = "#3e1151";
        "bodyText" = "#ffffff";
        }
    $theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
    $builder.Keys | %{$theme.Add($_, $builder[$_])}
    
    ## Now, that we have a PowerShell variable with our Theme we can use the Add-SPOTheme cmdlet to add our theme, like this:
    Add-SPOTheme -Name "HC Green Rich Purple Dark" -Palette $theme -IsInverted:$true
    
########################## End HC Green Rich Purple Dark ####################################  

########################################################################
############# BEGIN TEMPLATE #############
########################## Begin [THEME NAME] ####################################
$builder = [paste the PowerShell code from the builder here and remove the square brackets]
$theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
    $builder.Keys | %{$theme.Add($_, $builder[$_])}
    ## Now, that we have a PowerShell variable with our Theme we can use the Add-SPOTheme cmdlet to add our theme, like this:
    Add-SPOTheme -Name "THEME NAME" -Palette $theme -IsInverted:$false #$true if it's a dark theme $false if a light theme
########################## End [THEME NAME] ####################################

################### Hide / Unhide Default Themes #####################
## Alternative, after you've added in all your themes, you can hide the default themes so they aren't available to site owners.
Set-HideDefaultThemes -HideDefaultThemes:$true

## If you want the default ones back you just fire off this:
Set-HideDefaultThemes -HideDefaultThemes:$false
#######################################################################
############# BEGIN TEMPLATE #############


####################  End of Script ############################
