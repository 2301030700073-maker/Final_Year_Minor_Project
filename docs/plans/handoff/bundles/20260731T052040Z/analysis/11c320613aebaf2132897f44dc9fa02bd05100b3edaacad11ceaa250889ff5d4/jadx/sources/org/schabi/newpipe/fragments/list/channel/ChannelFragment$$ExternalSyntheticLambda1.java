package org.schabi.newpipe.fragments.list.channel;

import android.content.Context;
import androidx.appcompat.widget.AppCompatButton;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.ColorUtils;
import androidx.room.Room;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import net.newpipe.app.AppKt;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.FragmentChannelBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChannelFragment$$ExternalSyntheticLambda1 implements Consumer, Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ChannelFragment f$0;

    public /* synthetic */ ChannelFragment$$ExternalSyntheticLambda1(ChannelFragment channelFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = channelFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        ChannelFragment channelFragment = this.f$0;
        switch (i) {
            case 0:
                Throwable th = (Throwable) obj;
                int i2 = ChannelFragment.$r8$clinit;
                String str = channelFragment.url;
                if (str == null) {
                    str = "No URL";
                }
                channelFragment.showError(new ErrorInfo(th, UserAction.REQUESTED_CHANNEL, str, Integer.valueOf(channelFragment.serviceId), channelFragment.url));
                break;
            case 1:
                int i3 = ChannelFragment.$r8$clinit;
                channelFragment.isLoading.set(false);
                channelFragment.handleResult((ChannelInfo) obj);
                break;
            case 2:
                int i4 = ChannelFragment.$r8$clinit;
                channelFragment.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.SUBSCRIPTION_CHANGE, "Changing subscription for " + channelFragment.currentInfo.getUrl(), channelFragment.currentInfo));
                break;
            case 3:
                AppKt.animate$default((AppCompatButton) channelFragment.binding.channelSubscribeButton, false, 100L, null, 0L, null, 28);
                channelFragment.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.SUBSCRIPTION_GET, "Get subscription status", channelFragment.currentInfo));
                break;
            case 4:
                int i5 = ChannelFragment.$r8$clinit;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                boolean z = ((AppCompatButton) channelFragment.binding.channelSubscribeButton).getVisibility() == 0;
                int i6 = z ? 300 : 0;
                int i7 = z ? 200 : 0;
                int color = channelFragment.activity.getColor(R.color.subscribed_background_color);
                int color2 = channelFragment.activity.getColor(R.color.subscribed_text_color);
                int blendARGB = ColorUtils.blendARGB(0.35f, Options.Companion.resolveColorFromAttr(channelFragment.activity, R.attr.colorPrimary), color);
                int color3 = channelFragment.activity.getColor(R.color.subscribe_text_color);
                FragmentChannelBinding fragmentChannelBinding = channelFragment.binding;
                if (booleanValue) {
                    ((AppCompatButton) fragmentChannelBinding.channelSubscribeButton).setText(R.string.subscribe_button_title);
                    AppKt.animateBackgroundColor((AppCompatButton) channelFragment.binding.channelSubscribeButton, i6, color, blendARGB);
                    Room.animateTextColor((AppCompatButton) channelFragment.binding.channelSubscribeButton, i7, color2, color3);
                } else {
                    ((AppCompatButton) fragmentChannelBinding.channelSubscribeButton).setText(R.string.subscribed_button_title);
                    AppKt.animateBackgroundColor((AppCompatButton) channelFragment.binding.channelSubscribeButton, i6, blendARGB, color);
                    Room.animateTextColor((AppCompatButton) channelFragment.binding.channelSubscribeButton, i7, color3, color2);
                }
                AppKt.animate$default((AppCompatButton) channelFragment.binding.channelSubscribeButton, true, 100L, AnimationType.LIGHT_SCALE_AND_ALPHA, 0L, null, 24);
                break;
            default:
                int i8 = ChannelFragment.$r8$clinit;
                if (!((Boolean) obj).booleanValue()) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) channelFragment.binding.rootView;
                    int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
                    Snackbar make = Snackbar.make(coordinatorLayout, coordinatorLayout.getResources().getText(R.string.you_successfully_subscribed), 0);
                    make.setAction(make.context.getText(R.string.get_notified), new ChannelFragment$$ExternalSyntheticLambda2(channelFragment, 1));
                    ((SnackbarContentLayout) make.view.getChildAt(0)).getActionView().setTextColor(-256);
                    make.show();
                    break;
                }
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        int i = ChannelFragment.$r8$clinit;
        Context requireContext = this.f$0.requireContext();
        NotificationHelper.Companion.getClass();
        return NotificationHelper.Companion.areNewStreamsNotificationsEnabled(requireContext);
    }
}
