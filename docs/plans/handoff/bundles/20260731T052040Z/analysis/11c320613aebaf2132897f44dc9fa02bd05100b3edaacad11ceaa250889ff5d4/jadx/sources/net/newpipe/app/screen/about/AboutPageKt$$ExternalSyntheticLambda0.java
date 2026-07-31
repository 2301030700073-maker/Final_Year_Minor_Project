package net.newpipe.app.screen.about;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.newpipe.app.platform.AndroidShareHandler;
import net.newpipe.app.platform.ShareHandler;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutPageKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ShareHandler f$0;

    public /* synthetic */ AboutPageKt$$ExternalSyntheticLambda0(ShareHandler shareHandler, int i) {
        this.$r8$classId = i;
        this.f$0 = shareHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ShareHandler shareHandler = this.f$0;
        String str = (String) obj;
        switch (i) {
            case 0:
                str.getClass();
                ((AndroidShareHandler) shareHandler).openUrlInBrowser(str);
                break;
            default:
                str.getClass();
                ((AndroidShareHandler) shareHandler).openUrlInBrowser(str);
                break;
        }
        return unit;
    }
}
