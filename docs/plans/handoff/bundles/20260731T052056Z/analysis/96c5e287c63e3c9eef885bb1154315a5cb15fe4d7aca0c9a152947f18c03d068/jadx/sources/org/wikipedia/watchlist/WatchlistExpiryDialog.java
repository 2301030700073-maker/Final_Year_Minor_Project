package org.wikipedia.watchlist;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/watchlist/WatchlistExpiryDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WatchlistExpiryDialog extends ExtendedBottomSheetDialogFragment {
    public final List expiryList;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onExpiryChanged(WatchlistExpiry watchlistExpiry);
    }

    public WatchlistExpiryDialog() {
        super(false);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(20, new WatchlistFragment$special$$inlined$viewModels$default$1(19, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(WatchlistExpiryDialogViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 28), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 24), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 29));
        this.expiryList = Room.listOf((Object[]) new WatchlistExpiry[]{WatchlistExpiry.NEVER, WatchlistExpiry.ONE_WEEK, WatchlistExpiry.ONE_MONTH, WatchlistExpiry.THREE_MONTH, WatchlistExpiry.SIX_MONTH});
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new WatchlistExpiryDialog$$ExternalSyntheticLambda0(this, 0), true, -822626812));
        return composeView;
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Object parent = requireView().getParent();
        parent.getClass();
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        from.setPeekHeight(displayMetrics.heightPixels);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new WatchlistExpiryDialog$onViewCreated$1(this, null, 0), 3);
    }
}
