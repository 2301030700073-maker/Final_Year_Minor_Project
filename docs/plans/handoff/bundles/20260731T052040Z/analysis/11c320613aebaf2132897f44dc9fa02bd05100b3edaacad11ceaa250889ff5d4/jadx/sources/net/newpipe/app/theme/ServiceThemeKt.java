package net.newpipe.app.theme;

import androidx.compose.foundation.ImageKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.platform.InspectionModeKt;
import com.russhwolf.settings.SharedPreferencesSettings;
import kotlin.UIntArray;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ServiceThemeKt {
    public static final ColorScheme youTubeLightScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0, 0, Brush.Color(4293212469L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme youTubeDarkScheme = ColorSchemeKt.m139darkColorScheme_VG5OTI$default(0, 0, Brush.Color(4288227106L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme soundCloudLightScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0, 0, Brush.Color(4294278144L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme soundCloudDarkScheme = ColorSchemeKt.m139darkColorScheme_VG5OTI$default(0, 0, Brush.Color(4288893696L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme mediaCCCLightScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0, 0, Brush.Color(4288585374L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme mediaCCCDarkScheme = ColorSchemeKt.m139darkColorScheme_VG5OTI$default(0, 0, Brush.Color(4287072135L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme peerTubeLightScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0, 0, Brush.Color(4294930176L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme peerTubeDarkScheme = ColorSchemeKt.m139darkColorScheme_VG5OTI$default(0, 0, Brush.Color(4288890624L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme bandCampLightScheme = ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0, 0, Brush.Color(4279738564L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);
    public static final ColorScheme bandCampDarkScheme = ColorSchemeKt.m139darkColorScheme_VG5OTI$default(0, 0, Brush.Color(4279468961L), Brush.Color(4294967295L), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13, 65535);

    public static final Service currentService(Composer composer) {
        Scope currentKoinScope = KoinApplicationKt.currentKoinScope(composer);
        GapComposer gapComposer = (GapComposer) composer;
        Object obj = null;
        boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = currentKoinScope.resolve(Reflection.getOrCreateKotlinClass(SharedPreferencesSettings.class), null);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        SharedPreferencesSettings sharedPreferencesSettings = (SharedPreferencesSettings) rememberedValue;
        EnumEntriesList enumEntriesList = Service.$ENTRIES;
        enumEntriesList.getClass();
        UIntArray.Iterator iterator = new UIntArray.Iterator(enumEntriesList, 5);
        while (true) {
            if (!iterator.hasNext()) {
                break;
            }
            Object next = iterator.next();
            String serviceName = ((Service) next).getServiceName();
            String serviceName2 = Service.YOUTUBE.getServiceName();
            sharedPreferencesSettings.getClass();
            serviceName2.getClass();
            String string = sharedPreferencesSettings.delegate.getString("service", serviceName2);
            if (string != null) {
                serviceName2 = string;
            }
            if (Intrinsics.areEqual(serviceName, serviceName2)) {
                obj = next;
                break;
            }
        }
        obj.getClass();
        return (Service) obj;
    }

    public static final ColorScheme currentServiceScheme(Composer composer) {
        Service service;
        boolean booleanValue = ((Boolean) ((GapComposer) composer).consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
        boolean isSystemInDarkTheme = ImageKt.isSystemInDarkTheme(composer);
        GapComposer gapComposer = (GapComposer) composer;
        if (booleanValue) {
            gapComposer.startReplaceGroup(-813550662);
            gapComposer.end(false);
            service = Service.YOUTUBE;
        } else {
            gapComposer.startReplaceGroup(-813550237);
            Service currentService = currentService(gapComposer);
            gapComposer.end(false);
            service = currentService;
        }
        return isSystemInDarkTheme ? service.getDarkScheme() : service.getLightScheme();
    }
}
