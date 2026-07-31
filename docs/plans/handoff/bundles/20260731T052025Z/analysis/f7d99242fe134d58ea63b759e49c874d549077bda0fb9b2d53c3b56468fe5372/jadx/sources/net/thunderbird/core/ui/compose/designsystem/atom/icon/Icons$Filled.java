package net.thunderbird.core.ui.compose.designsystem.atom.icon;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.filled.FilledDotIconKt;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.filled.FilledStarIconKt;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.filled.FilledThundermailKt;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Icons$Filled {
    public static final ImageVector Cancel;
    public static final ImageVector CheckCircle;
    public static final ImageVector Dot;
    public static final ImageVector Notifications;
    public static final ImageVector Person;
    public static final ImageVector Star;
    public static final ImageVector Thundermail;
    public static final ImageVector Warning;

    static {
        ImageVector imageVector = OperationKt._cancel;
        if (imageVector == null) {
            ImageVector.Builder builder = new ImageVector.Builder("Filled.Cancel", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i = VectorKt.$r8$clinit;
            SolidColor solidColor = new SolidColor(Color.Black);
            Headers.Builder m = Modifier.CC.m(12.0f, 2.0f);
            m.curveTo(6.47f, 2.0f, 2.0f, 6.47f, 2.0f, 12.0f);
            m.reflectiveCurveToRelative(4.47f, 10.0f, 10.0f, 10.0f);
            m.reflectiveCurveToRelative(10.0f, -4.47f, 10.0f, -10.0f);
            m.reflectiveCurveTo(17.53f, 2.0f, 12.0f, 2.0f);
            m.close();
            m.moveTo(17.0f, 15.59f);
            m.lineTo(15.59f, 17.0f);
            m.lineTo(12.0f, 13.41f);
            m.lineTo(8.41f, 17.0f);
            m.lineTo(7.0f, 15.59f);
            m.lineTo(10.59f, 12.0f);
            m.lineTo(7.0f, 8.41f);
            m.lineTo(8.41f, 7.0f);
            m.lineTo(12.0f, 10.59f);
            m.lineTo(15.59f, 7.0f);
            m.lineTo(17.0f, 8.41f);
            m.lineTo(13.41f, 12.0f);
            m.lineTo(17.0f, 15.59f);
            m.close();
            builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", m.namesAndValues);
            imageVector = builder.build();
            OperationKt._cancel = imageVector;
        }
        Cancel = imageVector;
        ImageVector imageVector2 = IntOffsetKt._checkCircle;
        if (imageVector2 == null) {
            ImageVector.Builder builder2 = new ImageVector.Builder("Filled.CheckCircle", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i2 = VectorKt.$r8$clinit;
            SolidColor solidColor2 = new SolidColor(Color.Black);
            Headers.Builder m2 = Modifier.CC.m(12.0f, 2.0f);
            m2.curveTo(6.48f, 2.0f, 2.0f, 6.48f, 2.0f, 12.0f);
            m2.reflectiveCurveToRelative(4.48f, 10.0f, 10.0f, 10.0f);
            m2.reflectiveCurveToRelative(10.0f, -4.48f, 10.0f, -10.0f);
            m2.reflectiveCurveTo(17.52f, 2.0f, 12.0f, 2.0f);
            m2.close();
            m2.moveTo(10.0f, 17.0f);
            m2.lineToRelative(-5.0f, -5.0f);
            m2.lineToRelative(1.41f, -1.41f);
            m2.lineTo(10.0f, 14.17f);
            m2.lineToRelative(7.59f, -7.59f);
            m2.lineTo(19.0f, 8.0f);
            m2.lineToRelative(-9.0f, 9.0f);
            m2.close();
            builder2.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", m2.namesAndValues);
            imageVector2 = builder2.build();
            IntOffsetKt._checkCircle = imageVector2;
        }
        CheckCircle = imageVector2;
        Dot = (ImageVector) FilledDotIconKt.FilledDotIcon$delegate.getValue();
        ImageVector imageVector3 = IntRectKt._notifications;
        if (imageVector3 == null) {
            ImageVector.Builder builder3 = new ImageVector.Builder("Filled.Notifications", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i3 = VectorKt.$r8$clinit;
            SolidColor solidColor3 = new SolidColor(Color.Black);
            Headers.Builder m3 = Modifier.CC.m(12.0f, 22.0f);
            m3.curveToRelative(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
            m3.horizontalLineToRelative(-4.0f);
            m3.curveToRelative(0.0f, 1.1f, 0.89f, 2.0f, 2.0f, 2.0f);
            m3.close();
            m3.moveTo(18.0f, 16.0f);
            m3.verticalLineToRelative(-5.0f);
            m3.curveToRelative(0.0f, -3.07f, -1.64f, -5.64f, -4.5f, -6.32f);
            m3.lineTo(13.5f, 4.0f);
            m3.curveToRelative(0.0f, -0.83f, -0.67f, -1.5f, -1.5f, -1.5f);
            m3.reflectiveCurveToRelative(-1.5f, 0.67f, -1.5f, 1.5f);
            m3.verticalLineToRelative(0.68f);
            m3.curveTo(7.63f, 5.36f, 6.0f, 7.92f, 6.0f, 11.0f);
            m3.verticalLineToRelative(5.0f);
            m3.lineToRelative(-2.0f, 2.0f);
            m3.verticalLineToRelative(1.0f);
            m3.horizontalLineToRelative(16.0f);
            m3.verticalLineToRelative(-1.0f);
            m3.lineToRelative(-2.0f, -2.0f);
            m3.close();
            builder3.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor3, null, "", m3.namesAndValues);
            imageVector3 = builder3.build();
            IntRectKt._notifications = imageVector3;
        }
        Notifications = imageVector3;
        ImageVector imageVector4 = SQLite._person;
        if (imageVector4 == null) {
            ImageVector.Builder builder4 = new ImageVector.Builder("Filled.Person", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i4 = VectorKt.$r8$clinit;
            SolidColor solidColor4 = new SolidColor(Color.Black);
            Headers.Builder m4 = Modifier.CC.m(12.0f, 12.0f);
            m4.curveToRelative(2.21f, 0.0f, 4.0f, -1.79f, 4.0f, -4.0f);
            m4.reflectiveCurveToRelative(-1.79f, -4.0f, -4.0f, -4.0f);
            m4.reflectiveCurveToRelative(-4.0f, 1.79f, -4.0f, 4.0f);
            m4.reflectiveCurveToRelative(1.79f, 4.0f, 4.0f, 4.0f);
            m4.close();
            m4.moveTo(12.0f, 14.0f);
            m4.curveToRelative(-2.67f, 0.0f, -8.0f, 1.34f, -8.0f, 4.0f);
            m4.verticalLineToRelative(2.0f);
            m4.horizontalLineToRelative(16.0f);
            m4.verticalLineToRelative(-2.0f);
            m4.curveToRelative(0.0f, -2.66f, -5.33f, -4.0f, -8.0f, -4.0f);
            m4.close();
            builder4.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor4, null, "", m4.namesAndValues);
            imageVector4 = builder4.build();
            SQLite._person = imageVector4;
        }
        Person = imageVector4;
        Star = (ImageVector) FilledStarIconKt.FilledStarIcon$delegate.getValue();
        Thundermail = (ImageVector) FilledThundermailKt.FilledThundermail$delegate.getValue();
        ImageVector imageVector5 = DBUtil._warning;
        if (imageVector5 == null) {
            ImageVector.Builder builder5 = new ImageVector.Builder("Filled.Warning", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i5 = VectorKt.$r8$clinit;
            SolidColor solidColor5 = new SolidColor(Color.Black);
            Headers.Builder builder6 = new Headers.Builder(1);
            builder6.moveTo(1.0f, 21.0f);
            builder6.horizontalLineToRelative(22.0f);
            builder6.lineTo(12.0f, 2.0f);
            builder6.lineTo(1.0f, 21.0f);
            builder6.close();
            builder6.moveTo(13.0f, 18.0f);
            builder6.horizontalLineToRelative(-2.0f);
            builder6.verticalLineToRelative(-2.0f);
            builder6.horizontalLineToRelative(2.0f);
            builder6.verticalLineToRelative(2.0f);
            builder6.close();
            builder6.moveTo(13.0f, 14.0f);
            builder6.horizontalLineToRelative(-2.0f);
            builder6.verticalLineToRelative(-4.0f);
            builder6.horizontalLineToRelative(2.0f);
            builder6.verticalLineToRelative(4.0f);
            builder6.close();
            builder5.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor5, null, "", builder6.namesAndValues);
            imageVector5 = builder5.build();
            DBUtil._warning = imageVector5;
        }
        Warning = imageVector5;
    }
}
