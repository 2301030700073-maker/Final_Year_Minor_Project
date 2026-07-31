package androidx.work.impl;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.LongSparseArray;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.platform.WrappedComposition;
import androidx.core.content.res.CamUtils;
import androidx.core.view.DisplayCompat;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda1;
import androidx.lifecycle.LifecycleRegistry;
import androidx.room.Room;
import androidx.room.TransactionExecutor;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.EnqueueUtilsKt;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.SingleDateSelector;
import com.google.android.material.datepicker.UtcDates;
import com.google.android.material.textfield.TextInputLayout;
import com.hcaptcha.sdk.HCaptchaError;
import com.hcaptcha.sdk.HCaptchaException;
import com.hcaptcha.sdk.HCaptchaJSInterface;
import com.hcaptcha.sdk.HCaptchaWebView;
import com.hcaptcha.sdk.HCaptchaWebViewHelper$HCaptchaWebClient;
import com.hcaptcha.sdk.IHCaptchaVerifier;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.selects.OnTimeout;
import kotlinx.coroutines.selects.SelectImplementation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.edit.preview.EditPreviewFragment;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageActivity$$ExternalSyntheticLambda12;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.page.customize.CustomizeToolbarViewModel;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.UserMentionInputView;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Processor$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Processor$$ExternalSyntheticLambda2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TransactionExecutor transactionExecutor;
        List list;
        int i;
        int i2;
        int i3 = 10;
        int i4 = -1;
        int i5 = 1;
        switch (this.$r8$classId) {
            case 0:
                Processor processor = (Processor) this.f$0;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) this.f$1;
                synchronized (processor.mLock) {
                    try {
                        Iterator it = processor.mOuterListeners.iterator();
                        while (it.hasNext()) {
                            ((ExecutionListener) it.next()).onExecuted(workGenerationalId, false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                AppCompatActivity appCompatActivity = (AppCompatActivity) this.f$0;
                appCompatActivity.lifecycleRegistry.addObserver(new MenuHostHelper$$ExternalSyntheticLambda1(i5, (OnBackPressedDispatcher) this.f$1, appCompatActivity));
                return;
            case 2:
                transactionExecutor = (TransactionExecutor) this.f$0;
                try {
                    ((Runnable) this.f$1).run();
                    return;
                } finally {
                }
            case 3:
                DisplayCompat.doTranslation((AndroidContentCaptureManager) this.f$0, (LongSparseArray) this.f$1);
                return;
            case 4:
                WrappedComposition wrappedComposition = (WrappedComposition) this.f$0;
                LifecycleRegistry lifecycleRegistry = (LifecycleRegistry) this.f$1;
                if (wrappedComposition.disposed) {
                    return;
                }
                wrappedComposition.addedToLifecycle = lifecycleRegistry;
                lifecycleRegistry.addObserver(wrappedComposition);
                return;
            case 5:
                ((CamUtils) this.f$0).onFontRetrieved((Typeface) this.f$1);
                return;
            case 6:
                Runnable runnable = (Runnable) this.f$0;
                transactionExecutor = (TransactionExecutor) this.f$1;
                try {
                    runnable.run();
                    return;
                } finally {
                }
            case 7:
                ((AndroidSvg) ((ImageLoader$Builder) this.f$0).defaults).stopWork((StartStopToken) this.f$1, 3);
                return;
            case 8:
                List<BaseConstraintController$track$1$listener$1> list2 = (List) this.f$0;
                ConstraintTracker constraintTracker = (ConstraintTracker) this.f$1;
                for (BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 : list2) {
                    Object obj = constraintTracker.currentState;
                    BaseConstraintController baseConstraintController = baseConstraintController$track$1$listener$1.this$0;
                    Object constraintsNotMet = baseConstraintController.isConstrained(obj) ? new ConstraintsState.ConstraintsNotMet(baseConstraintController.getReason()) : ConstraintsState.ConstraintsMet.INSTANCE;
                    ProducerCoroutine producerCoroutine = baseConstraintController$track$1$listener$1.$$this$callbackFlow;
                    producerCoroutine.getClass();
                    producerCoroutine.mo757trySendJP2dKIU(constraintsNotMet);
                }
                return;
            case 9:
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f$0;
                String uuid = ((UUID) this.f$1).toString();
                uuid.getClass();
                EnqueueUtilsKt.cancel(workManagerImpl, uuid);
                return;
            case 10:
                WorkDatabase workDatabase = (WorkDatabase) this.f$0;
                WorkManagerImpl workManagerImpl2 = (WorkManagerImpl) this.f$1;
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                workSpecDao.getClass();
                Iterator it2 = ((List) ExceptionsKt.performBlocking(workSpecDao.__db, true, false, new Data$$ExternalSyntheticLambda0(i3))).iterator();
                while (it2.hasNext()) {
                    EnqueueUtilsKt.cancel(workManagerImpl2, (String) it2.next());
                }
                return;
            case 11:
                MaterialButton materialButton = (MaterialButton) this.f$0;
                Runnable runnable2 = (Runnable) this.f$1;
                int[] iArr = MaterialButton.CHECKABLE_STATE_SET;
                runnable2.run();
                LinearLayout.LayoutParams layoutParams = materialButton.originalLayoutParams;
                if (layoutParams != null) {
                    materialButton.setLayoutParams(layoutParams);
                    materialButton.originalLayoutParams = null;
                    materialButton.originalWidth = -2.1474836E9f;
                }
                materialButton.requestLayout();
                return;
            case 12:
                SingleDateSelector.AnonymousClass1 anonymousClass1 = (SingleDateSelector.AnonymousClass1) this.f$0;
                String str = (String) this.f$1;
                TextInputLayout textInputLayout = anonymousClass1.textInputLayout;
                SimpleDateFormat simpleDateFormat = anonymousClass1.dateFormat;
                Context context = textInputLayout.getContext();
                textInputLayout.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), str.replace(' ', (char) 160)) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), simpleDateFormat.format(new Date(UtcDates.getTodayCalendar().getTimeInMillis())).replace(' ', (char) 160)));
                SingleDateSelector singleDateSelector = SingleDateSelector.this;
                anonymousClass1.val$dateTextInput.getError();
                singleDateSelector.getClass();
                anonymousClass1.val$listener.onIncompleteSelectionChanged();
                return;
            case IMAGE_VALUE:
                ((HCaptchaJSInterface) this.f$0).captchaVerifier.onSuccess((String) this.f$1);
                return;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((HCaptchaJSInterface) this.f$0).captchaVerifier.onFailure(new HCaptchaException((HCaptchaError) this.f$1, null));
                return;
            case 15:
                HCaptchaWebViewHelper$HCaptchaWebClient hCaptchaWebViewHelper$HCaptchaWebClient = (HCaptchaWebViewHelper$HCaptchaWebClient) this.f$0;
                Uri uri = (Uri) this.f$1;
                ImageLoader$Builder imageLoader$Builder = hCaptchaWebViewHelper$HCaptchaWebClient.this$0;
                HCaptchaWebView hCaptchaWebView = (HCaptchaWebView) imageLoader$Builder.extras;
                hCaptchaWebView.removeJavascriptInterface("JSInterface");
                hCaptchaWebView.removeJavascriptInterface("JSDI");
                ((IHCaptchaVerifier) imageLoader$Builder.componentRegistry).onFailure(new HCaptchaException(HCaptchaError.INSECURE_HTTP_REQUEST_ERROR, "Insecure resource " + uri + " requested"));
                return;
            case LAZY_VERTICAL_GRID_VALUE:
                ((CancellableContinuationImpl) this.f$0).resumeUndispatched((HandlerContext) this.f$1);
                return;
            case VERTICAL_GRID_ITEM_VALUE:
                ((SelectImplementation) this.f$0).trySelectInternal((OnTimeout) this.f$1, Unit.INSTANCE);
                return;
            case RADIO_GROUP_VALUE:
                Runnable runnable3 = (Runnable) this.f$0;
                Runnable runnable4 = (Runnable) this.f$1;
                if (runnable3 != null) {
                    runnable3.run();
                }
                if (runnable4 != null) {
                    runnable4.run();
                    return;
                }
                return;
            case RADIO_BUTTON_VALUE:
                return;
            case RADIO_ROW_VALUE:
                DescriptionEditView descriptionEditView = (DescriptionEditView) this.f$0;
                String str2 = (String) this.f$1;
                int i6 = DescriptionEditView.$r8$clinit;
                if (descriptionEditView.isAttachedToWindow()) {
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    PlainPasteEditText plainPasteEditText = descriptionEditView.binding.viewDescriptionEditText;
                    String str3 = descriptionEditView.originalDescription;
                    str3.getClass();
                    Pattern compile = Pattern.compile("\\s");
                    compile.getClass();
                    Matcher matcher = compile.matcher(str2);
                    if (matcher.find()) {
                        ArrayList arrayList = new ArrayList(10);
                        int i7 = 0;
                        do {
                            arrayList.add(str2.subSequence(i7, matcher.start()).toString());
                            i7 = matcher.end();
                        } while (matcher.find());
                        arrayList.add(str2.subSequence(i7, str2.length()).toString());
                        list = arrayList;
                    } else {
                        list = Room.listOf(str2.toString());
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : list) {
                        if (!StringsKt.isBlank((String) obj2)) {
                            arrayList2.add(obj2);
                        }
                    }
                    Iterator it3 = arrayList2.iterator();
                    int i8 = 0;
                    while (true) {
                        i = i8;
                        while (it3.hasNext() && (i8 = StringsKt.indexOf$default(str3, (String) it3.next(), i8, false, 4)) != -1) {
                            if (i == 0) {
                                break;
                            }
                        }
                    }
                    if (i8 == -1) {
                        i = StringsKt.indexOf$default(str3, (String) CollectionsKt.last((List) arrayList2), 0, false, 6);
                        i8 = i;
                    }
                    if (i8 >= 0) {
                        plainPasteEditText.setSelection(i, ((String) CollectionsKt.last((List) arrayList2)).length() + i8);
                        return;
                    }
                    return;
                }
                return;
            case RADIO_COLUMN_VALUE:
                UriUtil.visitInExternalBrowser(((EditPreviewFragment.EditLinkHandler) this.f$0).context, (Uri) this.f$1);
                return;
            case SIZE_BOX_VALUE:
                OnThisDayFragment onThisDayFragment = (OnThisDayFragment) this.f$0;
                String str4 = (String) this.f$1;
                ViewMainDrawerBinding viewMainDrawerBinding = onThisDayFragment._binding;
                viewMainDrawerBinding.getClass();
                ((TextView) viewMainDrawerBinding.yearInReviewRedDot).setText(str4);
                return;
            case 23:
                HistoryFragment historyFragment = (HistoryFragment) this.f$0;
                WikiCardView wikiCardView = (WikiCardView) this.f$1;
                if (historyFragment.isAdded()) {
                    ViewGroup.LayoutParams layoutParams2 = wikiCardView.getLayoutParams();
                    if (layoutParams2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                        return;
                    }
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
                    int roundedDpToPx = Okio__OkioKt.isLandscape(historyFragment.requireContext()) ? Okio__OkioKt.roundedDpToPx(30.0f) + (wikiCardView.getWidth() / 6) : Okio__OkioKt.roundedDpToPx(16.0f);
                    int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(3.0f);
                    int i9 = ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                    layoutParams3.setMarginStart(roundedDpToPx);
                    ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = roundedDpToPx2;
                    layoutParams3.setMarginEnd(roundedDpToPx);
                    ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin = i9;
                    wikiCardView.setLayoutParams(layoutParams3);
                    return;
                }
                return;
            case 24:
                PageActivity pageActivity = (PageActivity) this.f$0;
                Intent intent = (Intent) this.f$1;
                int i10 = PageActivity.$r8$clinit;
                pageActivity.handleIntent$1(intent);
                return;
            case 25:
                PageActivity pageActivity2 = (PageActivity) this.f$0;
                PageActivity$$ExternalSyntheticLambda12 pageActivity$$ExternalSyntheticLambda12 = (PageActivity$$ExternalSyntheticLambda12) this.f$1;
                pageActivity2.exclusiveTooltipRunnable = null;
                if (pageActivity2.isDestroyed()) {
                    return;
                }
                pageActivity$$ExternalSyntheticLambda12.run();
                return;
            case 26:
                CustomizeToolbarFragment customizeToolbarFragment = (CustomizeToolbarFragment) this.f$0;
                TalkTemplatesFragment.RearrangeableItemTouchHelperCallback rearrangeableItemTouchHelperCallback = (TalkTemplatesFragment.RearrangeableItemTouchHelperCallback) this.f$1;
                if (customizeToolbarFragment.isAdded()) {
                    DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = (DiffUtil$DiffLinesAdapter) rearrangeableItemTouchHelperCallback.adapter;
                    ArrayList saveChanges = customizeToolbarFragment.getViewModel().saveChanges();
                    diffUtil$DiffLinesAdapter.getClass();
                    CustomizeToolbarFragment customizeToolbarFragment2 = (CustomizeToolbarFragment) diffUtil$DiffLinesAdapter.diffLines;
                    CustomizeToolbarViewModel viewModel = customizeToolbarFragment2.getViewModel();
                    ArrayList arrayList3 = viewModel.fullList;
                    if (!viewModel.toolbarOrder.isEmpty() && arrayList3.contains(CustomizeToolbarViewModel.emptyPlaceholderPair(true))) {
                        i2 = arrayList3.indexOf(CustomizeToolbarViewModel.emptyPlaceholderPair(true));
                        arrayList3.remove(i2);
                    } else if (viewModel.menuOrder.isEmpty() || !arrayList3.contains(CustomizeToolbarViewModel.emptyPlaceholderPair(false))) {
                        i2 = -1;
                    } else {
                        i2 = arrayList3.indexOf(CustomizeToolbarViewModel.emptyPlaceholderPair(false));
                        arrayList3.remove(i2);
                    }
                    if (i2 >= 0) {
                        diffUtil$DiffLinesAdapter.mObservable.notifyItemRangeRemoved(i2, 1);
                    }
                    CustomizeToolbarViewModel viewModel2 = customizeToolbarFragment2.getViewModel();
                    ArrayList arrayList4 = viewModel2.fullList;
                    if (viewModel2.toolbarOrder.isEmpty() && !arrayList4.contains(CustomizeToolbarViewModel.emptyPlaceholderPair(true))) {
                        arrayList4.add(1, CustomizeToolbarViewModel.emptyPlaceholderPair(true));
                        i4 = 1;
                    } else if (viewModel2.menuOrder.isEmpty() && !arrayList4.contains(CustomizeToolbarViewModel.emptyPlaceholderPair(false))) {
                        arrayList4.add(CustomizeToolbarViewModel.emptyPlaceholderPair(false));
                        i4 = arrayList4.size() - 1;
                    }
                    if (i4 >= 0) {
                        diffUtil$DiffLinesAdapter.notifyItemRangeChanged(i4, customizeToolbarFragment2.getViewModel().fullList.size() - i4);
                    }
                    Iterator it4 = saveChanges.iterator();
                    while (it4.hasNext()) {
                        int intValue = ((Number) it4.next()).intValue();
                        diffUtil$DiffLinesAdapter.notifyItemMoved(intValue, intValue + 1);
                    }
                    return;
                }
                return;
            case 27:
                ReadingListFragment readingListFragment = (ReadingListFragment) this.f$0;
                MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = (MainFragment$$ExternalSyntheticLambda5) this.f$1;
                readingListFragment.exclusiveTooltipRunnable = null;
                if (readingListFragment.isAdded()) {
                    mainFragment$$ExternalSyntheticLambda5.run();
                    return;
                }
                return;
            default:
                TalkReplyActivity talkReplyActivity = (TalkReplyActivity) this.f$0;
                TalkTemplate talkTemplate = (TalkTemplate) this.f$1;
                talkReplyActivity.shouldWatchText = false;
                ActivityTalkReplyBinding activityTalkReplyBinding = talkReplyActivity.binding;
                if (activityTalkReplyBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((PlainPasteEditText) activityTalkReplyBinding.replySubjectText).setText(talkTemplate.subject);
                ActivityTalkReplyBinding activityTalkReplyBinding2 = talkReplyActivity.binding;
                if (activityTalkReplyBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((UserMentionInputView) activityTalkReplyBinding2.replyInputView).getEditText().setText(talkTemplate.message);
                talkReplyActivity.shouldWatchText = true;
                talkReplyActivity.setSaveButtonEnabled(true);
                return;
        }
    }

    private final void run$org$maplibre$android$snapshotter$MapSnapshotter$$ExternalSyntheticLambda0() {
    }
}
