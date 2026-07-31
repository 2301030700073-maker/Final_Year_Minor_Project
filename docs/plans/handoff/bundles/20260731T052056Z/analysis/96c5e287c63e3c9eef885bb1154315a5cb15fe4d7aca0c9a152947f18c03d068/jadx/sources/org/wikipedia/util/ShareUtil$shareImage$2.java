package org.wikipedia.util;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.glance.appwidget.AppWidgetId;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleRegistry;
import androidx.work.ListenableWorker;
import androidx.work.impl.model.WorkSpec;
import coil3.network.NetworkFetcher;
import coil3.network.NetworkRequest;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import okhttp3.Headers;
import org.wikipedia.Constants;
import org.wikipedia.descriptions.DescriptionEditViewModel;
import org.wikipedia.gallery.GalleryViewModel;
import org.wikipedia.page.PageTitle;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShareUtil$shareImage$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $bmp;
    public Object $context;
    public /* synthetic */ Object $imageFileName;
    public final /* synthetic */ Object $onShared;
    public final /* synthetic */ int $r8$classId;
    public Object $subject;
    public Object $text;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(DescriptionEditViewModel descriptionEditViewModel, String str, String str2, String str3, String str4, String str5, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 8;
        this.$context = descriptionEditViewModel;
        this.$subject = str;
        this.$text = str2;
        this.$imageFileName = str3;
        this.$onShared = str4;
        this.$bmp = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$bmp;
        Object obj3 = this.$onShared;
        switch (i) {
            case 0:
                return new ShareUtil$shareImage$2((Context) this.$context, (String) this.$subject, (String) this.$text, (Function0) obj3, (Bitmap) obj2, (String) this.$imageFileName, continuation);
            case 1:
                ShareUtil$shareImage$2 shareUtil$shareImage$2 = new ShareUtil$shareImage$2((Channel) this.$text, (Animatable) this.$imageFileName, (MutableState) obj3, (MutableState) obj2, continuation, 1);
                shareUtil$shareImage$2.$subject = obj;
                return shareUtil$shareImage$2;
            case 2:
                ShareUtil$shareImage$2 shareUtil$shareImage$22 = new ShareUtil$shareImage$2((PointerInputScope) this.$subject, (Function1) this.$text, (Function1) this.$imageFileName, (Function3) obj3, (Function1) obj2, continuation);
                shareUtil$shareImage$22.$context = obj;
                return shareUtil$shareImage$22;
            case 3:
                ShareUtil$shareImage$2 shareUtil$shareImage$23 = new ShareUtil$shareImage$2((Context) this.$context, (AppWidgetId) this.$text, (ReadingChallengeWidget) this.$imageFileName, (Bundle) obj3, (Function3) obj2, continuation);
                shareUtil$shareImage$23.$subject = obj;
                return shareUtil$shareImage$23;
            case 4:
                return new ShareUtil$shareImage$2((CompositionImpl) this.$text, (AppWidgetSession) this.$imageFileName, (Context) this.$context, (Recomposer) obj3, (TimerScopeKt$withTimer$2$1$blockScope$1) obj2, continuation);
            case 5:
                return new ShareUtil$shareImage$2((LifecycleRegistry) this.$text, (Lifecycle$State) this.$imageFileName, (CoroutineScope) obj3, (Function2) obj2, continuation, 5);
            case 6:
                ShareUtil$shareImage$2 shareUtil$shareImage$24 = new ShareUtil$shareImage$2((ListenableWorker) this.$imageFileName, (Headers.Builder) obj3, (WorkSpec) obj2, continuation);
                shareUtil$shareImage$24.$text = obj;
                return shareUtil$shareImage$24;
            case 7:
                ShareUtil$shareImage$2 shareUtil$shareImage$25 = new ShareUtil$shareImage$2((Ref$ObjectRef) this.$text, (NetworkFetcher) this.$imageFileName, (Ref$ObjectRef) obj3, (NetworkRequest) obj2, continuation, 7);
                shareUtil$shareImage$25.$subject = obj;
                return shareUtil$shareImage$25;
            case 8:
                return new ShareUtil$shareImage$2((DescriptionEditViewModel) this.$context, (String) this.$subject, (String) this.$text, (String) this.$imageFileName, (String) obj3, (String) obj2, continuation);
            case 9:
                ShareUtil$shareImage$2 shareUtil$shareImage$26 = new ShareUtil$shareImage$2((GalleryViewModel) obj3, (PageTitle) obj2, continuation);
                shareUtil$shareImage$26.$imageFileName = obj;
                return shareUtil$shareImage$26;
            default:
                return new ShareUtil$shareImage$2((PageTitle) this.$text, (Activity) this.$imageFileName, (Constants.InvokeSource) obj3, (DialogInterface.OnDismissListener) obj2, continuation, 10);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((ShareUtil$shareImage$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x032f, code lost:
    
        if (r0 == r2) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x057a, code lost:
    
        if (r9 == r12) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01d0, code lost:
    
        if (r3 == r2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a6, code lost:
    
        if (r0 == r2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x026b, code lost:
    
        if (r0 == r12) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0281, code lost:
    
        if (r0 == r12) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0242, code lost:
    
        if (r2 == r12) goto L96;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:252:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0645  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:288:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a6  */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v18, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r1v20, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r3v28, types: [java.util.concurrent.Future] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v34, types: [com.google.common.util.concurrent.ListenableFuture] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:256:0x0639 -> B:249:0x063d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 1834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil$shareImage$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(Context context, String str, String str2, Function0 function0, Bitmap bitmap, String str3, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.$context = context;
        this.$subject = str;
        this.$text = str2;
        this.$onShared = function0;
        this.$bmp = bitmap;
        this.$imageFileName = str3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(CompositionImpl compositionImpl, AppWidgetSession appWidgetSession, Context context, Recomposer recomposer, TimerScopeKt$withTimer$2$1$blockScope$1 timerScopeKt$withTimer$2$1$blockScope$1, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.$text = compositionImpl;
        this.$imageFileName = appWidgetSession;
        this.$context = context;
        this.$onShared = recomposer;
        this.$bmp = timerScopeKt$withTimer$2$1$blockScope$1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(PointerInputScope pointerInputScope, Function1 function1, Function1 function12, Function3 function3, Function1 function13, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$subject = pointerInputScope;
        this.$text = function1;
        this.$imageFileName = function12;
        this.$onShared = function3;
        this.$bmp = function13;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(ListenableWorker listenableWorker, Headers.Builder builder, WorkSpec workSpec, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 6;
        this.$imageFileName = listenableWorker;
        this.$onShared = builder;
        this.$bmp = workSpec;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ShareUtil$shareImage$2(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$text = obj;
        this.$imageFileName = obj2;
        this.$onShared = obj3;
        this.$bmp = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(Context context, AppWidgetId appWidgetId, ReadingChallengeWidget readingChallengeWidget, Bundle bundle, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.$context = context;
        this.$text = appWidgetId;
        this.$imageFileName = readingChallengeWidget;
        this.$onShared = bundle;
        this.$bmp = function3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2(GalleryViewModel galleryViewModel, PageTitle pageTitle, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 9;
        this.$onShared = galleryViewModel;
        this.$bmp = pageTitle;
    }
}
