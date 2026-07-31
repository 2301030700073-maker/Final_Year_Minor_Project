package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.fragment.app.FragmentViewLifecycleOwner;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$Changelog;
import com.fsck.k9.R;
import net.thunderbird.feature.changelog.internal.RecentChangesViewModel;
import net.thunderbird.feature.navigation.changelog.api.ChangeLogMode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragment$$ExternalSyntheticLambda15 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListFragment f$0;

    public /* synthetic */ MessageListFragment$$ExternalSyntheticLambda15(MessageListFragment messageListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = messageListFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        MessageListFragment messageListFragment = this.f$0;
        switch (i) {
            case 0:
                view.getClass();
                FragmentViewLifecycleOwner viewLifecycleOwner = messageListFragment.getViewLifecycleOwner();
                Context context = view.getContext();
                context.getClass();
                ComposeView composeView = new ComposeView(context, null, 0, 6, null);
                composeView.setTag(R.id.view_tree_lifecycle_owner, viewLifecycleOwner);
                composeView.setTag(R.id.view_tree_saved_state_registry_owner, messageListFragment);
                composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
                composeView.setContent(new ComposableLambdaImpl(1447654983, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, 5, (byte) 0), true));
                FrameLayout frameLayout = new FrameLayout(context);
                frameLayout.setId(android.R.id.content);
                frameLayout.setTag(R.id.androidx_compose_ui_view_composition_context, WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer$default(frameLayout, messageListFragment.mLifecycleRegistry, 1));
                frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                frameLayout.addView(composeView);
                new PopupWindow((View) frameLayout, -2, -2, true).showAsDropDown(view);
                break;
            case 1:
                ((RecentChangesViewModel) messageListFragment.recentChangesViewModel$delegate.getValue()).shouldShowRecentChangesHint.removeObserver(messageListFragment.shouldShowRecentChangesHintObserver);
                int i2 = FeatureLauncherActivity.$r8$clinit;
                FeatureLauncherActivity.Companion.launch(messageListFragment.requireContext(), new FeatureLauncherTarget$Changelog(ChangeLogMode.RECENT_CHANGES));
                break;
            default:
                messageListFragment.onCompose();
                break;
        }
    }
}
