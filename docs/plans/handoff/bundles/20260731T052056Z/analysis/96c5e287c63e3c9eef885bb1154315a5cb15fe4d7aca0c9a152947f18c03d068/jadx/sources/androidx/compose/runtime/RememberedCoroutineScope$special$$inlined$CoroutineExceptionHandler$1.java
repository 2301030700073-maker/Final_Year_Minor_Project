package androidx.compose.runtime;

import android.content.Context;
import android.widget.Toast;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.ui.unit.DpKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.Job;
import okhttp3.Headers;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object $traceContext$inlined;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(androidx.compose.runtime.tooling.CompositionErrorContextImpl r2, androidx.compose.runtime.RememberedCoroutineScope r3) {
        /*
            r1 = this;
            r0 = 0
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$traceContext$inlined = r2
            r1.this$0 = r3
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1.<init>(androidx.compose.runtime.tooling.CompositionErrorContextImpl, androidx.compose.runtime.RememberedCoroutineScope):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        Object obj2 = this.$traceContext$inlined;
        switch (i) {
            case 0:
                RememberedCoroutineScope rememberedCoroutineScope = (RememberedCoroutineScope) obj;
                DpKt.tryAttachComposeStackTrace(th, new Recomposer$$ExternalSyntheticLambda6(23, (CompositionErrorContextImpl) obj2, rememberedCoroutineScope));
                CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) rememberedCoroutineScope.parentContext.get(Job.Key.$$INSTANCE$1);
                if (coroutineExceptionHandler == null) {
                    throw th;
                }
                coroutineExceptionHandler.handleException(th, coroutineContext);
                return;
            default:
                L.e(th);
                Context context = (Context) obj2;
                Toast.makeText(context, R.string.notifications_direct_reply_error, 1).show();
                int i2 = TalkTopicsActivity.$r8$clinit;
                context.startActivity(Headers.Companion.newIntent(context, (PageTitle) obj, Constants.InvokeSource.NOTIFICATION));
                return;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(android.content.Context r2, org.wikipedia.page.PageTitle r3) {
        /*
            r1 = this;
            r0 = 1
            r1.$r8$classId = r0
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$traceContext$inlined = r2
            r1.this$0 = r3
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1.<init>(android.content.Context, org.wikipedia.page.PageTitle):void");
    }
}
