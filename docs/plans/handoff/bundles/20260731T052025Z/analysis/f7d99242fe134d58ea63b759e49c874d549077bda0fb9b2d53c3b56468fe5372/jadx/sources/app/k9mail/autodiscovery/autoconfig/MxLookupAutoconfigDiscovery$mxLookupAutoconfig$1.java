package app.k9mail.autodiscovery.autoconfig;

import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.core.common.mail.EmailAddress;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1 extends ContinuationImpl {
    public EmailAddress L$0;
    public String L$1;
    public MxLookupResult L$2;
    public Iterator L$7;
    public Iterator L$9;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ MxLookupAutoconfigDiscovery this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MxLookupAutoconfigDiscovery$mxLookupAutoconfig$1(MxLookupAutoconfigDiscovery mxLookupAutoconfigDiscovery, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = mxLookupAutoconfigDiscovery;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MxLookupAutoconfigDiscovery.access$mxLookupAutoconfig(this.this$0, null, this);
    }
}
