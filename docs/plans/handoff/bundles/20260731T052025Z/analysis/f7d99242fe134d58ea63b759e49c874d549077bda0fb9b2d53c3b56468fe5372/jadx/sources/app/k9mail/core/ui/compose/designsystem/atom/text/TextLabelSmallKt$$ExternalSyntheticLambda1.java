package app.k9mail.core.ui.compose.designsystem.atom.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextLabelSmallKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CharSequence f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ TextLabelSmallKt$$ExternalSyntheticLambda1(CharSequence charSequence, Modifier modifier, long j, int i, int i2, int i3, int i4) {
        this.$r8$classId = i4;
        this.f$0 = charSequence;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$4 = i;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CharSequence charSequence = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                Util.m1092TextLabelSmallXl4FiYE((AnnotatedString) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                DBUtil.m806TextTitleLargeXl4FiYE((AnnotatedString) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(1);
                IntOffsetKt.m756TextHeadlineMediumXl4FiYE((String) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }
}
