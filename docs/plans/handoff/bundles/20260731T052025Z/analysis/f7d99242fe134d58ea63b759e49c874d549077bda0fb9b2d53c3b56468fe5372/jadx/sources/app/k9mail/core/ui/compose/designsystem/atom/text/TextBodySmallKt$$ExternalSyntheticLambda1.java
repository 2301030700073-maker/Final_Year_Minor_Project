package app.k9mail.core.ui.compose.designsystem.atom.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.style.TextAlign;
import androidx.work.OperationKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlinx.collections.immutable.PersistentMap;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextBodySmallKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ CharSequence f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;
    public final /* synthetic */ int f$7;

    public /* synthetic */ TextBodySmallKt$$ExternalSyntheticLambda1(AnnotatedString annotatedString, Modifier modifier, long j, int i, int i2, PersistentMap persistentMap, int i3) {
        this.f$0 = annotatedString;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$4 = i;
        this.f$5 = i2;
        this.f$3 = persistentMap;
        this.f$7 = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$7;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$3;
        CharSequence charSequence = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                MathKt.m984TextBodySmallXl4FiYE((String) charSequence, this.f$1, this.f$2, (TextAlign) obj3, this.f$4, this.f$5, (Composer) obj, updateChangedFlags, this.f$7);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                OperationKt.m836TextDisplayMediumXl4FiYE((String) charSequence, this.f$1, this.f$2, (TextAlign) obj3, this.f$4, this.f$5, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Validate.m1067TextLabelLargeZHfKjFs((AnnotatedString) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, (PersistentMap) obj3, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ TextBodySmallKt$$ExternalSyntheticLambda1(String str, Modifier modifier, long j, TextAlign textAlign, int i, int i2, int i3) {
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$3 = textAlign;
        this.f$4 = i;
        this.f$5 = i2;
        this.f$7 = i3;
    }

    public /* synthetic */ TextBodySmallKt$$ExternalSyntheticLambda1(String str, Modifier modifier, long j, TextAlign textAlign, int i, int i2, int i3, int i4) {
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$3 = textAlign;
        this.f$4 = i;
        this.f$5 = i2;
        this.f$7 = i4;
    }
}
