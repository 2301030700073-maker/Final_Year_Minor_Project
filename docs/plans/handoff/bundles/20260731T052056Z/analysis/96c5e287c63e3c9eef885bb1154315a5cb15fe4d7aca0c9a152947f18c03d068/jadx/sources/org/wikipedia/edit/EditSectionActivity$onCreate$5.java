package org.wikipedia.edit;

import android.widget.LinearLayout;
import androidx.appcompat.app.AlertController;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.ChannelFlowCollector;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSectionActivity$onCreate$5 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ EditSectionActivity this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.edit.EditSectionActivity$onCreate$5$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ EditSectionActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(EditSectionActivity editSectionActivity, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = editSectionActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            EditSectionActivity editSectionActivity = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(editSectionActivity, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                default:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(editSectionActivity, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                default:
                    ((AnonymousClass1) create((Resource) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
            }
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Continuation continuation = null;
            int i2 = 2;
            EditSectionActivity editSectionActivity = this.this$0;
            int i3 = 1;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    AwaitKt.launch$default(coroutineScope, null, null, new EditSectionActivity$onCreate$5(editSectionActivity, continuation, i3), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new PageActivity$onCreate$1$1$1(8, editSectionActivity, continuation), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new EditSectionActivity$onCreate$5(editSectionActivity, continuation, i2), 3);
                    return unit;
                default:
                    Resource resource = (Resource) obj2;
                    ResultKt.throwOnFailure(obj);
                    if (resource instanceof Resource.Loading) {
                        editSectionActivity.showProgressBar$1(true);
                    } else {
                        int i4 = 0;
                        if (resource instanceof Resource.Success) {
                            editSectionActivity.showProgressBar$1(false);
                            editSectionActivity.displaySectionText();
                            Prefs prefs = Prefs.INSTANCE;
                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                            if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_edit_talk_page_source_prompt), true) && (editSectionActivity.getViewModel().pageTitle.namespace() == Namespace.TALK || editSectionActivity.getViewModel().pageTitle.namespace() == Namespace.USER_TALK)) {
                                MultipartBody.Builder inflate = MultipartBody.Builder.inflate(editSectionActivity.getLayoutInflater());
                                AppTextView appTextView = (AppTextView) inflate.parts;
                                StringUtil stringUtil = StringUtil.INSTANCE;
                                appTextView.setText(StringUtil.fromHtml(editSectionActivity.getString(R.string.talk_edit_disclaimer)));
                                appTextView.setMovementMethod(editSectionActivity.movementMethod);
                                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(editSectionActivity, 0);
                                AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                                alertParams.mView = (LinearLayout) inflate.boundary;
                                materialAlertDialogBuilder.setPositiveButton(R.string.onboarding_got_it, new TextInputDialog$$ExternalSyntheticLambda2(i2));
                                alertParams.mOnDismissListener = new EditSectionActivity$$ExternalSyntheticLambda15(inflate, i4);
                                materialAlertDialogBuilder.show();
                            }
                            editSectionActivity.invalidateOptionsMenu();
                            if (!editSectionActivity.maybeShowTempAccountDialog(false)) {
                                Prefs prefs2 = Prefs.INSTANCE;
                                if (Prefs.getAutoShowEditNotices()) {
                                    editSectionActivity.showEditNotices();
                                } else if (!Prefs.getAutoShowEditNotices()) {
                                    if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_edit_notices_tooltip_shown), false)) {
                                        PrefsIoUtil.setBoolean(R.string.preference_key_edit_notices_tooltip_shown, true);
                                        ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                                        if (activityLoginBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((ConstraintLayout) activityLoginBinding.footerContainer).postDelayed(new EditSectionActivity$$ExternalSyntheticLambda10(editSectionActivity, 1), 100L);
                                    }
                                }
                            }
                            MwServiceError mwServiceError = (MwServiceError) ((Resource.Success) resource).data;
                            if (mwServiceError != null) {
                                ShareUtil.showError(editSectionActivity, new MwException(mwServiceError), editSectionActivity.getViewModel().pageTitle.wikiSite);
                            }
                        } else if (resource instanceof Resource.Error) {
                            editSectionActivity.showProgressBar$1(false);
                            editSectionActivity.showError$1(((Resource.Error) resource).throwable);
                        }
                    }
                    return unit;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EditSectionActivity$onCreate$5(EditSectionActivity editSectionActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = editSectionActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        EditSectionActivity editSectionActivity = this.this$0;
        switch (i) {
            case 0:
                return new EditSectionActivity$onCreate$5(editSectionActivity, continuation, 0);
            case 1:
                return new EditSectionActivity$onCreate$5(editSectionActivity, continuation, 1);
            default:
                return new EditSectionActivity$onCreate$5(editSectionActivity, continuation, 2);
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
        return ((EditSectionActivity$onCreate$5) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        EditSectionActivity editSectionActivity = this.this$0;
        int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(editSectionActivity, continuation, 0);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(editSectionActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                int i5 = EditSectionActivity.$r8$clinit;
                ReadonlyStateFlow readonlyStateFlow = editSectionActivity.getViewModel().fetchSectionTextState;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(editSectionActivity, continuation, i2);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlyStateFlow, anonymousClass12, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    int i7 = EditSectionActivity.$r8$clinit;
                    ReadonlyStateFlow readonlyStateFlow2 = editSectionActivity.getViewModel().waitForRevisionState;
                    ChannelFlowCollector channelFlowCollector = new ChannelFlowCollector(12, editSectionActivity);
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(channelFlowCollector, this) == coroutineSingletons3) {
                        return coroutineSingletons3;
                    }
                } else {
                    if (i6 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
        }
    }
}
