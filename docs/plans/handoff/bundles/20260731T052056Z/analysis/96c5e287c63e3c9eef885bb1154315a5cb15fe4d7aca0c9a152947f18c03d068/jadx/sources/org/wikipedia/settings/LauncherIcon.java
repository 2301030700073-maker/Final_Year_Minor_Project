package org.wikipedia.settings;

import android.content.ComponentName;
import android.content.Context;
import androidx.compose.ui.Modifier;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LauncherIcon {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LauncherIcon[] $VALUES;
    public static final LauncherIcon DEFAULT;
    public static final LauncherIcon YIR25;
    private final int foreground;
    private final String key;
    private final int background = R.drawable.launcher_background;
    private final int label = R.string.app_name;

    static {
        LauncherIcon launcherIcon = new LauncherIcon(0, R.drawable.launcher_foreground, "DEFAULT", "DefaultIcon");
        DEFAULT = launcherIcon;
        LauncherIcon launcherIcon2 = new LauncherIcon(1, R.drawable.launcher_foreground_yir25, "YIR25", "YIR25Icon");
        YIR25 = launcherIcon2;
        LauncherIcon[] launcherIconArr = {launcherIcon, launcherIcon2};
        $VALUES = launcherIconArr;
        $ENTRIES = new EnumEntriesList(launcherIconArr);
    }

    public LauncherIcon(int i, int i2, String str, String str2) {
        this.key = str2;
        this.foreground = i2;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static LauncherIcon valueOf(String str) {
        return (LauncherIcon) Enum.valueOf(LauncherIcon.class, str);
    }

    public static LauncherIcon[] values() {
        return (LauncherIcon[]) $VALUES.clone();
    }

    public final int getBackground() {
        return this.background;
    }

    public final ComponentName getComponentName(Context context) {
        return new ComponentName(context.getPackageName(), Modifier.CC.m("org.wikipedia.", this.key));
    }

    public final int getForeground() {
        return this.foreground;
    }

    public final String getKey() {
        return this.key;
    }
}
