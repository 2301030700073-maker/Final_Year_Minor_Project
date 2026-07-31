package app.k9mail.core.ui.compose.designsystem.atom.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.work.Data;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextBodyMediumKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CharSequence f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;
    public final /* synthetic */ Function1 f$6;
    public final /* synthetic */ int f$7;
    public final /* synthetic */ int f$8;

    public /* synthetic */ TextBodyMediumKt$$ExternalSyntheticLambda1(CharSequence charSequence, Modifier modifier, long j, int i, int i2, Function1 function1, int i3, int i4, int i5) {
        this.$r8$classId = i5;
        this.f$0 = charSequence;
        this.f$1 = modifier;
        this.f$2 = j;
        this.f$4 = i;
        this.f$5 = i2;
        this.f$6 = function1;
        this.f$7 = i3;
        this.f$8 = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$7;
        CharSequence charSequence = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Data.Companion.m824TextBodyMediumZHfKjFs((AnnotatedString) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags, this.f$8);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                Data.Companion.m825TextBodyMediumZHfKjFs((String) charSequence, this.f$1, this.f$2, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags2, this.f$8);
                break;
        }
        return unit;
    }
}
