package app.k9mail.autodiscovery.autoconfig;

import app.k9mail.autodiscovery.autoconfig.HttpFetchResult;
import com.beetstra.jutf7.Base64Util;
import java.io.InputStream;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okhttp3.HttpUrl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealAutoconfigFetcher$parseSettings$1 extends ContinuationImpl {
    public HttpFetchResult.SuccessResponse L$0;
    public HttpUrl L$2;
    public InputStream L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ Base64Util this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealAutoconfigFetcher$parseSettings$1(Base64Util base64Util, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = base64Util;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.parseSettings(null, null, null, this);
    }
}
