package net.thunderbird.core.ui.compose.theme2.p001default;

import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.sqlite.SQLite;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DefaultThemeTypographyKt {
    public static final ThemeTypography defaultTypography;

    static {
        FontWeight fontWeight = FontWeight.Normal;
        TextStyle textStyle = new TextStyle(0L, SQLite.getSp(57), fontWeight, SQLite.getSp(-0.2d), 0, SQLite.getSp(64), 16645977);
        TextStyle textStyle2 = new TextStyle(0L, SQLite.getSp(45), fontWeight, SQLite.getSp(0), 0, SQLite.getSp(52), 16645977);
        TextStyle textStyle3 = new TextStyle(0L, SQLite.getSp(36), fontWeight, SQLite.getSp(0), 0, SQLite.getSp(44), 16645977);
        TextStyle textStyle4 = new TextStyle(0L, SQLite.getSp(32), fontWeight, SQLite.getSp(0), 0, SQLite.getSp(40), 16645977);
        TextStyle textStyle5 = new TextStyle(0L, SQLite.getSp(28), fontWeight, SQLite.getSp(0), 0, SQLite.getSp(36), 16645977);
        TextStyle textStyle6 = new TextStyle(0L, SQLite.getSp(24), fontWeight, SQLite.getSp(0), 0, SQLite.getSp(32), 16645977);
        TextStyle textStyle7 = new TextStyle(0L, SQLite.getSp(22), fontWeight, SQLite.getSp(0), 0, SQLite.getSp(28), 16645977);
        FontWeight fontWeight2 = FontWeight.Medium;
        TextStyle textStyle8 = new TextStyle(0L, SQLite.getSp(16), fontWeight2, SQLite.getSp(0.2d), 0, SQLite.getSp(24), 16645977);
        TextStyle textStyle9 = new TextStyle(0L, SQLite.getSp(14), fontWeight2, SQLite.getSp(0.1d), 0, SQLite.getSp(20), 16645977);
        TextStyle textStyle10 = new TextStyle(0L, SQLite.getSp(16), fontWeight, SQLite.getSp(0.5d), 0, SQLite.getSp(24), 16645977);
        TextStyle textStyle11 = new TextStyle(0L, SQLite.getSp(14), fontWeight, SQLite.getSp(0.2d), 0, SQLite.getSp(20), 16645977);
        TextStyle textStyle12 = new TextStyle(0L, SQLite.getSp(12), fontWeight, SQLite.getSp(0.4d), 0, SQLite.getSp(16), 16645977);
        FontWeight fontWeight3 = FontWeight.SemiBold;
        TextStyle textStyle13 = new TextStyle(0L, SQLite.getSp(14), fontWeight3, SQLite.getSp(0.1d), 0, SQLite.getSp(20), 16645977);
        FontWeight fontWeight4 = FontWeight.Bold;
        defaultTypography = new ThemeTypography(textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, new TextStyle(0L, SQLite.getSp(12), fontWeight4, SQLite.getSp(0.5d), 0, SQLite.getSp(16), 16645977), new TextStyle(0L, SQLite.getSp(11), fontWeight4, SQLite.getSp(0.5d), 0, SQLite.getSp(16), 16645977));
    }
}
