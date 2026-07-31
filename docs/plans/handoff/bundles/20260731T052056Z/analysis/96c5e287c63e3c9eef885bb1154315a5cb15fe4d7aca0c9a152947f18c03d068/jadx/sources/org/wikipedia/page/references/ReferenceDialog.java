package org.wikipedia.page.references;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.tabs.TabLayout;
import java.util.List;
import kotlin.Metadata;
import okhttp3.Request;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.views.AppTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/page/references/ReferenceDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Callback", "ViewHolder", "AppIconAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReferenceDialog extends ExtendedBottomSheetDialogFragment {
    public Request.Builder _binding;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        LinkHandler getLinkHandler();

        List getReferencesGroup();

        int getSelectedReferenceIndex();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        public final DefaultSocket binding;

        public ViewHolder(DefaultSocket defaultSocket) {
            super((LinearLayout) defaultSocket.socket);
            this.binding = defaultSocket;
            AppTextView appTextView = (AppTextView) defaultSocket.sink;
            Callback callback = ReferenceDialog.this.callback();
            appTextView.setMovementMethod(new LinkMovementMethodExt(callback != null ? callback.getLinkHandler() : null));
        }
    }

    public ReferenceDialog() {
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

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(requireActivity(), this.mTheme);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00d6, code lost:
    
        if (r10 == null) goto L16;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.LayoutInflater r8, android.view.ViewGroup r9, android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.references.ReferenceDialog.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        List referencesGroup;
        super.onStart();
        Callback callback = callback();
        if (callback != null && (referencesGroup = callback.getReferencesGroup()) != null && referencesGroup.size() == 1) {
            Request.Builder builder = this._binding;
            builder.getClass();
            ((TabLayout) builder.headers).setVisibility(8);
            Request.Builder builder2 = this._binding;
            builder2.getClass();
            ((View) builder2.method).setVisibility(8);
        }
        Request.Builder builder3 = this._binding;
        builder3.getClass();
        Object parent = ((NestedScrollView) builder3.url).getParent();
        parent.getClass();
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        from.setPeekHeight(displayMetrics.heightPixels);
    }
}
