package org.wikipedia.wiktionary;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/wiktionary/WiktionaryDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "org/wikipedia/page/PageFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WiktionaryDialog extends ExtendedBottomSheetDialogFragment {
    public static final List enabledLanguages = Room.listOf("en");
    public final Request.Builder viewModel$delegate;

    public WiktionaryDialog() {
        super(false);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(23, new WatchlistFragment$special$$inlined$viewModels$default$1(22, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(WiktionaryViewModel.class), new WatchlistFragment$special$$inlined$viewModels$default$3(lazy, 2), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 26), new WatchlistFragment$special$$inlined$viewModels$default$3(lazy, 3));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        BitmapsKt.setLayoutDirectionByLang(composeView, ((WiktionaryViewModel) this.viewModel$delegate.getValue()).pageTitle.wikiSite.languageCode);
        composeView.setContent(new ComposableLambdaImpl(new WiktionaryDialog$$ExternalSyntheticLambda0(this, 0), true, 674469754));
        return composeView;
    }
}
