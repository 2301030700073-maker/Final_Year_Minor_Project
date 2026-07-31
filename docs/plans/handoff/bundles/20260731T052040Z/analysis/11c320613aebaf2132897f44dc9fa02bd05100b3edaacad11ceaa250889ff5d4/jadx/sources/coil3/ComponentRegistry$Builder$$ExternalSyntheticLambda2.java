package coil3;

import coil3.decode.Decoder;
import kotlin.jvm.functions.Function0;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentRegistry$Builder$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Decoder.Factory f$0;

    public /* synthetic */ ComponentRegistry$Builder$$ExternalSyntheticLambda2(Decoder.Factory factory, int i) {
        this.$r8$classId = i;
        this.f$0 = factory;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Decoder.Factory factory = this.f$0;
        switch (i) {
        }
        return Jsoup.listOf(factory);
    }
}
