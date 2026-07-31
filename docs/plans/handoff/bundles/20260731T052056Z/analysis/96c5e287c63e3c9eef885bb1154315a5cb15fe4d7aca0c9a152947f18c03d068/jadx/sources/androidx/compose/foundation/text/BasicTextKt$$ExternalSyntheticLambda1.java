package androidx.compose.foundation.text;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicTextKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CharSequence f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ TextStyle f$2;
    public final /* synthetic */ Function1 f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ BasicTextKt$$ExternalSyntheticLambda1(CharSequence charSequence, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, Object obj, int i4, int i5, int i6) {
        this.$r8$classId = i6;
        this.f$0 = charSequence;
        this.f$1 = modifier;
        this.f$2 = textStyle;
        this.f$3 = function1;
        this.f$4 = i;
        this.f$5 = z;
        this.f$6 = i2;
        this.f$7 = i3;
        this.f$9 = obj;
        this.f$10 = i4;
        this.f$11 = i5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$10;
        Object obj3 = this.f$9;
        CharSequence charSequence = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                BasicTextKt.m180BasicTextRWo7tUw((String) charSequence, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (AutoSizeStepBased) obj3, (GapComposer) obj, updateChangedFlags, this.f$11);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                int updateChangedFlags3 = Updater.updateChangedFlags(this.f$11);
                BasicTextKt.m179BasicTextCL7eQgs((AnnotatedString) charSequence, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (Map) obj3, (GapComposer) obj, updateChangedFlags2, updateChangedFlags3);
                break;
        }
        return unit;
    }
}
