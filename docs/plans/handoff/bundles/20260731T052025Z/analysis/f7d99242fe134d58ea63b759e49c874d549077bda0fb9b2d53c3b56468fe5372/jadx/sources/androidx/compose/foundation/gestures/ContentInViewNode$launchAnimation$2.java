package androidx.compose.foundation.gestures;

import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.lifecycle.LiveDataScopeImpl;
import com.fsck.k9.ui.managefolders.FolderSettingsViewModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentInViewNode$launchAnimation$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $animationState;
    public final /* synthetic */ Object $bringIntoViewSpec;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long $viewportAdjustmentForReverseScroll;
    public /* synthetic */ Object L$0;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewNode$launchAnimation$2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, BringIntoViewSpec bringIntoViewSpec, long j, Continuation continuation) {
        super(2, continuation);
        this.this$0 = contentInViewNode;
        this.$animationState = updatableAnimationState;
        this.$bringIntoViewSpec = bringIntoViewSpec;
        this.$viewportAdjustmentForReverseScroll = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$bringIntoViewSpec;
        Object obj3 = this.$animationState;
        switch (i) {
            case 0:
                ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$2 = new ContentInViewNode$launchAnimation$2((ContentInViewNode) this.this$0, (UpdatableAnimationState) obj3, (BringIntoViewSpec) obj2, this.$viewportAdjustmentForReverseScroll, continuation);
                contentInViewNode$launchAnimation$2.L$0 = obj;
                return contentInViewNode$launchAnimation$2;
            default:
                ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$22 = new ContentInViewNode$launchAnimation$2((FolderSettingsViewModel) obj3, (String) obj2, this.$viewportAdjustmentForReverseScroll, continuation);
                contentInViewNode$launchAnimation$22.L$0 = obj;
                return contentInViewNode$launchAnimation$22;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ContentInViewNode$launchAnimation$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((ContentInViewNode$launchAnimation$2) create((LiveDataScopeImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewNode$launchAnimation$2(FolderSettingsViewModel folderSettingsViewModel, String str, long j, Continuation continuation) {
        super(2, continuation);
        this.$animationState = folderSettingsViewModel;
        this.$bringIntoViewSpec = str;
        this.$viewportAdjustmentForReverseScroll = j;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ Object $animationJob;
        public final /* synthetic */ Object $animationState;
        public final /* synthetic */ Object $bringIntoViewSpec;
        public final /* synthetic */ int $r8$classId = 0;
        public final /* synthetic */ long $viewportAdjustmentForReverseScroll;
        public /* synthetic */ Object L$0;
        public int label;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PlatformSelectionBehaviors platformSelectionBehaviors, String str, long j, TextRange textRange, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping, Continuation continuation) {
            super(2, continuation);
            this.L$0 = platformSelectionBehaviors;
            this.$animationState = str;
            this.$viewportAdjustmentForReverseScroll = j;
            this.this$0 = textRange;
            this.$bringIntoViewSpec = textFieldSelectionManager;
            this.$animationJob = offsetMapping;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Object obj2 = this.$animationJob;
            Object obj3 = this.$bringIntoViewSpec;
            Object obj4 = this.this$0;
            Object obj5 = this.$animationState;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1((UpdatableAnimationState) obj5, (ContentInViewNode) obj4, (BringIntoViewSpec) obj3, this.$viewportAdjustmentForReverseScroll, (Job) obj2, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                default:
                    return new AnonymousClass1((PlatformSelectionBehaviors) this.L$0, (String) obj5, this.$viewportAdjustmentForReverseScroll, (TextRange) obj4, (TextFieldSelectionManager) obj3, (OffsetMapping) obj2, continuation);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    return ((AnonymousClass1) create((ScrollingLogic$nestedScrollScope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
                default:
                    return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            int i = this.$r8$classId;
            Object obj3 = this.this$0;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            Object obj4 = this.$bringIntoViewSpec;
            Object obj5 = this.$animationState;
            Object obj6 = this.$animationJob;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) obj4;
                    ContentInViewNode contentInViewNode = (ContentInViewNode) obj3;
                    UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj5;
                    int i2 = this.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) this.L$0;
                        updatableAnimationState.value = ContentInViewNode.m148access$calculateScrollDeltaI_oMVgE(contentInViewNode, bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll);
                        SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0 = new SimpleActor$$ExternalSyntheticLambda0(contentInViewNode, updatableAnimationState, (Job) obj6, scrollingLogic$nestedScrollScope$1);
                        ConnectPlan$$ExternalSyntheticLambda0 connectPlan$$ExternalSyntheticLambda0 = new ConnectPlan$$ExternalSyntheticLambda0(contentInViewNode, updatableAnimationState, bringIntoViewSpec, 2);
                        this.label = 1;
                        if (updatableAnimationState.animateToZero(simpleActor$$ExternalSyntheticLambda0, connectPlan$$ExternalSyntheticLambda0, this) == coroutineSingletons) {
                        }
                    } else if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    break;
                default:
                    OffsetMapping offsetMapping = (OffsetMapping) obj6;
                    String str = (String) obj5;
                    TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj4;
                    int i3 = this.label;
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        PlatformSelectionBehaviors platformSelectionBehaviors = (PlatformSelectionBehaviors) this.L$0;
                        this.label = 1;
                        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) platformSelectionBehaviors;
                        platformSelectionBehaviorsImpl.getClass();
                        if (str.length() != 0) {
                            long j = this.$viewportAdjustmentForReverseScroll;
                            if (!TextRange.m699getCollapsedimpl(j)) {
                                obj2 = JobKt.withContext(platformSelectionBehaviorsImpl.coroutineContext, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(platformSelectionBehaviorsImpl, new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(j, platformSelectionBehaviorsImpl, str, null), null), this);
                                if (obj2 == coroutineSingletons) {
                                }
                            }
                        }
                        obj2 = null;
                        if (obj2 == coroutineSingletons) {
                        }
                    } else if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        obj2 = obj;
                    }
                    TextRange textRange = (TextRange) obj2;
                    if (textRange != null) {
                        long j2 = textRange.packedValue;
                        long TextRange = ParagraphKt.TextRange(offsetMapping.transformedToOriginal((int) (j2 >> 32)), offsetMapping.transformedToOriginal((int) (j2 & 4294967295L)));
                        if (!TextRange.m697equalsimpl(TextRange, (TextRange) obj3) && Intrinsics.areEqual(textFieldSelectionManager.getValue$foundation().annotatedString.text, str) && offsetMapping == textFieldSelectionManager.offsetMapping) {
                            textFieldSelectionManager.onValueChange.invoke(TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().annotatedString, TextRange));
                            textFieldSelectionManager.latestSelection = new TextRange(TextRange);
                        }
                    }
                    break;
            }
            return unit;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UpdatableAnimationState updatableAnimationState, ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j, Job job, Continuation continuation) {
            super(2, continuation);
            this.$animationState = updatableAnimationState;
            this.this$0 = contentInViewNode;
            this.$bringIntoViewSpec = bringIntoViewSpec;
            this.$viewportAdjustmentForReverseScroll = j;
            this.$animationJob = job;
        }
    }
}
