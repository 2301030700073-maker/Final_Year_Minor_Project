package com.fsck.k9.ui.messageview;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.fragment.app.FragmentState;
import androidx.transition.Transition;
import app.k9mail.core.android.common.contact.ContactRepository;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.view.MessageHeader;
import com.fsck.k9.view.ThemeUtils;
import com.fsck.k9.view.ToolableViewAnimator;
import com.google.android.material.button.MaterialButton;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.preference.BodyContentType;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.ui.animation.manager.AnimationManager;
import net.thunderbird.core.ui.animation.manager.DefaultAnimationManager;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageTopView extends LinearLayout implements KoinComponent {
    public final Lazy animationManager$delegate;
    public AttachmentViewCallback attachmentCallback;
    public final Lazy contactRepository$delegate;
    public ViewGroup containerView;
    public MaterialButton downloadRemainderButton;
    public View extraHeaderContainer;
    public boolean isShowingProgress;
    public LayoutInflater layoutInflater;
    public MessageCryptoPresenter messageCryptoPresenter;
    public MessageHeader messageHeaderView;
    public MessageReaderViewContract$ViewModel messageReaderViewModel;
    public ProgressBar progressBar;
    public boolean renderPlainFormat;
    public boolean showAccountIndicator;
    public boolean showPicturesButtonClicked;
    public ToolableViewAnimator viewAnimator;
    public final Lazy visualSettingsPrefManager$delegate;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(26);
        public boolean showPicturesButtonClicked;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.showPicturesButtonClicked ? 1 : 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageTopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageTopView$special$$inlined$inject$default$1
            public final /* synthetic */ MessageTopView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MessageTopView messageTopView = this.$this_inject;
                switch (i2) {
                    case 0:
                        return ViewSizeResolver.CC.m(ContactRepository.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(DisplayVisualSettingsPreferenceManager.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AnimationManager.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.contactRepository$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.visualSettingsPrefManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageTopView$special$$inlined$inject$default$1
            public final /* synthetic */ MessageTopView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                MessageTopView messageTopView = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(ContactRepository.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(DisplayVisualSettingsPreferenceManager.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AnimationManager.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        final int i3 = 2;
        this.animationManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageTopView$special$$inlined$inject$default$1
            public final /* synthetic */ MessageTopView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                MessageTopView messageTopView = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(ContactRepository.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(DisplayVisualSettingsPreferenceManager.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AnimationManager.class, messageTopView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
    }

    private final AnimationManager getAnimationManager() {
        return (AnimationManager) this.animationManager$delegate.getValue();
    }

    private final ContactRepository getContactRepository() {
        return (ContactRepository) this.contactRepository$delegate.getValue();
    }

    private final DisplayVisualSettingsPreferenceManager getVisualSettingsPrefManager() {
        return (DisplayVisualSettingsPreferenceManager) this.visualSettingsPrefManager$delegate.getValue();
    }

    private final void setShowDownloadButton(MessageViewInfo messageViewInfo) {
        boolean z = messageViewInfo.isMessageIncomplete;
        MaterialButton materialButton = this.downloadRemainderButton;
        if (!z) {
            if (materialButton != null) {
                materialButton.setVisibility(8);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
                throw null;
            }
        }
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
            throw null;
        }
        materialButton.setEnabled(true);
        MaterialButton materialButton2 = this.downloadRemainderButton;
        if (materialButton2 != null) {
            materialButton2.setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
            throw null;
        }
    }

    public final void displayViewOnLoadFinished(boolean z) {
        if (!z || !this.isShowingProgress) {
            ToolableViewAnimator toolableViewAnimator = this.viewAnimator;
            if (toolableViewAnimator != null) {
                toolableViewAnimator.setDisplayedChild(2);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("viewAnimator");
                throw null;
            }
        }
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
            throw null;
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(progressBar, "progress", progressBar.getProgress(), 1000);
        ofInt.addListener(new Transition.AnonymousClass3(4, this));
        ofInt.setDuration(180L);
        ofInt.start();
    }

    @Override // org.koin.core.component.KoinComponent
    public /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    public final MessageHeader getMessageHeaderView() {
        MessageHeader messageHeader = this.messageHeaderView;
        if (messageHeader != null) {
            return messageHeader;
        }
        Intrinsics.throwUninitializedPropertyAccessException("messageHeaderView");
        throw null;
    }

    public final boolean getRenderPlainFormat() {
        return this.renderPlainFormat;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(R.id.header_container);
        findViewById.getClass();
        setMessageHeaderView((MessageHeader) findViewById);
        LayoutInflater from = LayoutInflater.from(getContext());
        from.getClass();
        this.layoutInflater = from;
        View findViewById2 = findViewById(R.id.message_layout_animator);
        findViewById2.getClass();
        this.viewAnimator = (ToolableViewAnimator) findViewById2;
        if (!((DefaultAnimationManager) getAnimationManager()).shouldShowAnimations()) {
            ToolableViewAnimator toolableViewAnimator = this.viewAnimator;
            if (toolableViewAnimator == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewAnimator");
                throw null;
            }
            toolableViewAnimator.setInAnimation(null);
            ToolableViewAnimator toolableViewAnimator2 = this.viewAnimator;
            if (toolableViewAnimator2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewAnimator");
                throw null;
            }
            toolableViewAnimator2.setOutAnimation(null);
        }
        View findViewById3 = findViewById(R.id.message_progress);
        findViewById3.getClass();
        this.progressBar = (ProgressBar) findViewById3;
        View findViewById4 = findViewById(R.id.message_progress_text);
        findViewById4.getClass();
        View findViewById5 = findViewById(R.id.download_remainder);
        findViewById5.getClass();
        MaterialButton materialButton = (MaterialButton) findViewById5;
        this.downloadRemainderButton = materialButton;
        materialButton.setVisibility(8);
        View findViewById6 = findViewById(R.id.extra_header_container);
        findViewById6.getClass();
        this.extraHeaderContainer = findViewById6;
        View findViewById7 = findViewById(R.id.show_pictures);
        findViewById7.getClass();
        ((MaterialButton) findViewById7).setOnClickListener(new MessageTopView$$ExternalSyntheticLambda0(this, 2));
        View findViewById8 = findViewById(R.id.message_container);
        findViewById8.getClass();
        this.containerView = (ViewGroup) findViewById8;
        this.renderPlainFormat = ((DisplayVisualSettings) ((DefaultDisplayVisualSettingsPreferenceManager) getVisualSettingsPrefManager()).getConfig()).bodyContentType == BodyContentType.TEXT_PLAIN;
        getMessageHeaderView().setVisibility(8);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        parcelable.getClass();
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.showPicturesButtonClicked = savedState.showPicturesButtonClicked;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.showPicturesButtonClicked = this.showPicturesButtonClicked;
        return savedState;
    }

    public final void resetAndPrepareMessageView(MessageViewInfo messageViewInfo) {
        MaterialButton materialButton = this.downloadRemainderButton;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
            throw null;
        }
        materialButton.setVisibility(8);
        ViewGroup viewGroup = this.containerView;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
            throw null;
        }
        viewGroup.removeAllViews();
        setShowDownloadButton(messageViewInfo);
    }

    public final void setAttachmentCallback(AttachmentViewCallback attachmentViewCallback) {
        attachmentViewCallback.getClass();
        this.attachmentCallback = attachmentViewCallback;
    }

    public final void setCryptoProviderIcon(Drawable drawable, View view) {
        ImageView imageView = (ImageView) view.findViewById(R.id.crypto_error_icon);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
            return;
        }
        imageView.setImageResource(R.drawable.status_lock_error);
        Context context = getContext();
        TypedValue typedValue = ThemeUtils.TYPED_VALUE;
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue2 = ThemeUtils.TYPED_VALUE;
        theme.resolveAttribute(R.attr.openpgp_red, typedValue2, true);
        imageView.setColorFilter(typedValue2.data);
    }

    public final void setMessageCryptoPresenter(MessageCryptoPresenter messageCryptoPresenter) {
        this.messageCryptoPresenter = messageCryptoPresenter;
    }

    public final void setMessageHeaderClickListener(MessageHeaderClickListener messageHeaderClickListener) {
        getMessageHeaderView().setMessageHeaderClickListener(messageHeaderClickListener);
    }

    public final void setMessageHeaderView(MessageHeader messageHeader) {
        messageHeader.getClass();
        this.messageHeaderView = messageHeader;
    }

    public final void setMessageReaderViewModel(MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel) {
        messageReaderViewContract$ViewModel.getClass();
        this.messageReaderViewModel = messageReaderViewContract$ViewModel;
    }

    public final void setOnDownloadButtonClickListener(View.OnClickListener onClickListener) {
        MaterialButton materialButton = this.downloadRemainderButton;
        if (materialButton != null) {
            materialButton.setOnClickListener(onClickListener);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
            throw null;
        }
    }

    public final void setOnToggleFlagClickListener(View.OnClickListener onClickListener) {
        getMessageHeaderView().setOnFlagListener(onClickListener);
    }

    public final void setRenderPlainFormat(boolean z) {
        this.renderPlainFormat = z;
    }

    public final void setShowAccountIndicator(boolean z) {
        this.showAccountIndicator = z;
    }

    public final void setSubject(String str) {
        str.getClass();
        getMessageHeaderView().setSubject(str);
    }

    public final void setToLoadingState() {
        ToolableViewAnimator toolableViewAnimator = this.viewAnimator;
        if (toolableViewAnimator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewAnimator");
            throw null;
        }
        toolableViewAnimator.setDisplayedChild(0);
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
            throw null;
        }
        progressBar.setProgress(0);
        this.isShowingProgress = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b8  */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v4, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.Iterable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void showMessage(net.thunderbird.core.android.account.LegacyAccountDto r12, com.fsck.k9.mailstore.MessageViewInfo r13) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messageview.MessageTopView.showMessage(net.thunderbird.core.android.account.LegacyAccountDto, com.fsck.k9.mailstore.MessageViewInfo):void");
    }
}
