package androidx.compose.material3;

import androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
import androidx.compose.ui.unit.Dp;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 f$0;

    public /* synthetic */ TextFieldKt$$ExternalSyntheticLambda0(TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, int i) {
        this.$r8$classId = i;
        this.f$0 = textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 = this.f$0;
        switch (i) {
        }
        return new Dp(UnsignedKt.lerp(24.0f, 16.0f, textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0.invoke()));
    }
}
