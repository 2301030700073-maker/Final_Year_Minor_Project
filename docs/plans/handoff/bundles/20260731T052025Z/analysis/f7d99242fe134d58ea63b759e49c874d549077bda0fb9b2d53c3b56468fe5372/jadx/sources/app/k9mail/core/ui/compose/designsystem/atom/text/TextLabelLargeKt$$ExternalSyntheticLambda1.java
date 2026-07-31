package app.k9mail.core.ui.compose.designsystem.atom.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextLabelLargeKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CharSequence f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ TextLabelLargeKt$$ExternalSyntheticLambda1(CharSequence charSequence, Modifier modifier, long j, int i, int i2, int i3, int i4, int i5) {
        this.$r8$classId = i5;
        this.f$0 = charSequence;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$4 = i;
        this.f$5 = i2;
        this.f$6 = i3;
        this.f$7 = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$6;
        CharSequence charSequence = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Validate.m1066TextLabelLargeXl4FiYE((String) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags, this.f$7);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                SQLite.m815TextLabelMediumXl4FiYE((String) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags2, this.f$7);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Util.m1093TextLabelSmallXl4FiYE((String) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags3, this.f$7);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                RelationUtil.m809TextTitleSmallXl4FiYE((String) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags4, this.f$7);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags5 = Updater.updateChangedFlags(i2 | 1);
                RelationUtil.m808TextTitleSmallXl4FiYE((AnnotatedString) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags5, this.f$7);
                break;
        }
        return unit;
    }
}
