package org.wikipedia.readinglist;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import coil3.util.BitmapsKt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Callback", "org/wikipedia/media/AvPlayer", "org/jsoup/select/NodeTraversor", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingListItemActionsDialog extends ExtendedBottomSheetDialogFragment {
    public ReadingListItemActionsView actionsView;
    public ReadingListPage readingListPage;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onAddItemToOther(long j);

        void onDeleteItem(long j);

        void onMoveItemToOther(long j);

        void onSelectItem(long j);

        void onShareItem(long j);

        void onToggleItemOffline(long j);
    }

    public ReadingListItemActionsDialog() {
        super(false);
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        ReadingListItemActionsView readingListItemActionsView = new ReadingListItemActionsView(requireContext());
        this.actionsView = readingListItemActionsView;
        Context requireContext = requireContext();
        TypedValue typedValue = new TypedValue();
        Continuation continuation = null;
        if (!requireContext.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
            return null;
        }
        readingListItemActionsView.setBackgroundColor(typedValue.data);
        ReadingListItemActionsView readingListItemActionsView2 = this.actionsView;
        if (readingListItemActionsView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionsView");
            throw null;
        }
        readingListItemActionsView2.setCallback(new AvPlayer(20, this));
        ReadingListItemActionsView readingListItemActionsView3 = this.actionsView;
        if (readingListItemActionsView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionsView");
            throw null;
        }
        AwaitKt.launch$default(BitmapsKt.coroutineScope$default(readingListItemActionsView3), null, null, new SyntaxHighlighter.AnonymousClass2(10, this, continuation), 3);
        ReadingListItemActionsView readingListItemActionsView4 = this.actionsView;
        if (readingListItemActionsView4 != null) {
            return readingListItemActionsView4;
        }
        Intrinsics.throwUninitializedPropertyAccessException("actionsView");
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        ReadingListItemActionsView readingListItemActionsView = this.actionsView;
        if (readingListItemActionsView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionsView");
            throw null;
        }
        readingListItemActionsView.setCallback(null);
        super.onDestroyView();
    }
}
