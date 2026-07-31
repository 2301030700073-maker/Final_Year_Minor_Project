package org.wikipedia.edit.preview;

import androidx.compose.animation.core.Animation;
import java.io.Closeable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.RestService;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.restbase.PreviewRequest;
import org.wikipedia.page.PageTitle;
import org.wikipedia.staticdata.MainPageNameData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditPreviewFragment$showPreview$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ PageTitle $title;
    public final /* synthetic */ String $wikiText;
    public Ref$ObjectRef L$0;
    public int label;
    public final /* synthetic */ EditPreviewFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditPreviewFragment$showPreview$2(EditPreviewFragment editPreviewFragment, PageTitle pageTitle, String str, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.this$0 = editPreviewFragment;
        this.$title = pageTitle;
        this.$wikiText = str;
        this.L$0 = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new EditPreviewFragment$showPreview$2(this.this$0, this.$title, this.$wikiText, continuation);
            default:
                return new EditPreviewFragment$showPreview$2(this.this$0, this.$title, this.$wikiText, this.L$0, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((EditPreviewFragment$showPreview$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                EditPreviewFragment editPreviewFragment = this.this$0;
                if (i2 == 0) {
                    Ref$ObjectRef m22m = Animation.CC.m22m(obj);
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
                    EditPreviewFragment$showPreview$2 editPreviewFragment$showPreview$2 = new EditPreviewFragment$showPreview$2(editPreviewFragment, this.$title, this.$wikiText, m22m, null);
                    this.L$0 = m22m;
                    this.label = 1;
                    if (AwaitKt.withContext(defaultIoScheduler, editPreviewFragment$showPreview$2, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$ObjectRef = m22m;
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ref$ObjectRef = this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                editPreviewFragment.showPreview((String) ref$ObjectRef.element);
                return unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    EditPreviewFragment editPreviewFragment2 = this.this$0;
                    boolean isNewPage = editPreviewFragment2.callback().isNewPage();
                    PageTitle pageTitle = this.$title;
                    String valueFor = isNewPage ? MainPageNameData.valueFor(pageTitle.wikiSite.languageCode) : pageTitle.getPrefixedText();
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    PageTitle pageTitle2 = (PageTitle) editPreviewFragment2.model.title;
                    pageTitle2.getClass();
                    RestService rest = ServiceFactory.getRest(pageTitle2.wikiSite);
                    PreviewRequest previewRequest = new PreviewRequest(this.$wikiText);
                    this.label = 1;
                    obj = rest.getHtmlPreviewFromWikitext(valueFor, previewRequest, this);
                    if (obj == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Closeable closeable = (Closeable) obj;
                try {
                    this.L$0.element = ((ResponseBody) closeable).string();
                    ResultKt.closeFinally(closeable, null);
                    return unit;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ResultKt.closeFinally(closeable, th);
                        throw th2;
                    }
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditPreviewFragment$showPreview$2(EditPreviewFragment editPreviewFragment, PageTitle pageTitle, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = editPreviewFragment;
        this.$title = pageTitle;
        this.$wikiText = str;
    }
}
