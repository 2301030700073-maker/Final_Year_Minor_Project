package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DividerKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ float f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ DividerKt$$ExternalSyntheticLambda1(Modifier modifier, float f, long j, int i) {
        this.$r8$classId = 0;
        this.f$0 = modifier;
        this.f$1 = f;
        this.f$2 = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                BadgeKt.m133HorizontalDivider9IZ8Weo((Modifier) obj3, this.f$1, this.f$2, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(385);
                ListItemKt.m149LeadingDecorator8s8adOk(this.f$1, this.f$2, (TypographyKeyTokens) obj3, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(385);
                ListItemKt.m154TrailingDecorator8s8adOk(this.f$1, this.f$2, (TypographyKeyTokens) obj3, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ DividerKt$$ExternalSyntheticLambda1(float f, long j, TypographyKeyTokens typographyKeyTokens, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = f;
        this.f$2 = j;
        this.f$0 = typographyKeyTokens;
    }
}
