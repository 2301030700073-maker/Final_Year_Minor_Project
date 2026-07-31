package com.fsck.k9.ui.messageview;

import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.bumptech.glide.load.Option;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageTopView$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageTopView f$0;

    public /* synthetic */ MessageTopView$$ExternalSyntheticLambda0(MessageTopView messageTopView, int i) {
        this.$r8$classId = i;
        this.f$0 = messageTopView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        MessageTopView messageTopView = this.f$0;
        switch (i) {
            case 0:
                MessageCryptoPresenter messageCryptoPresenter = messageTopView.messageCryptoPresenter;
                if (messageCryptoPresenter != null) {
                    messageCryptoPresenter.reloadOnResumeWithoutRecreateFlag = true;
                    MessageViewFragment$messageCryptoMvpView$1 messageViewFragment$messageCryptoMvpView$1 = messageCryptoPresenter.messageCryptoMvpView;
                    messageViewFragment$messageCryptoMvpView$1.getClass();
                    int i2 = AccountSettingsActivity.$r8$clinit;
                    MessageViewFragment messageViewFragment = messageViewFragment$messageCryptoMvpView$1.this$0;
                    AppCompatActivity requireActivity = messageViewFragment.requireActivity();
                    LegacyAccountDto legacyAccountDto = messageViewFragment.account;
                    if (legacyAccountDto == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    String str = legacyAccountDto.uuid;
                    str.getClass();
                    Option.AnonymousClass1.start(requireActivity, str, "openpgp");
                    return;
                }
                return;
            case 1:
                MessageCryptoPresenter messageCryptoPresenter2 = messageTopView.messageCryptoPresenter;
                if (messageCryptoPresenter2 != null) {
                    messageCryptoPresenter2.messageCryptoMvpView.restartMessageCryptoProcessing();
                    return;
                }
                return;
            default:
                ViewGroup viewGroup = messageTopView.containerView;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerView");
                    throw null;
                }
                View childAt = viewGroup.getChildAt(0);
                if (childAt instanceof MessageContainerView) {
                    ((MessageContainerView) childAt).showPictures();
                }
                View view2 = messageTopView.extraHeaderContainer;
                if (view2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("extraHeaderContainer");
                    throw null;
                }
                view2.setVisibility(8);
                messageTopView.showPicturesButtonClicked = true;
                return;
        }
    }
}
