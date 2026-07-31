package org.wikipedia.search;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.NodeChain;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.search.db.RecentSearch;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\b"}, d2 = {"Lorg/wikipedia/search/RecentSearchesFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "org/wikipedia/search/SearchFragment", "RecentSearchItemViewHolder", "NamespaceAdapter", "NamespaceItemViewHolder", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RecentSearchesFragment extends Fragment {
    public NodeChain _binding;
    public SearchFragment callback;
    public final List namespaceHints = Room.listOf((Object[]) new Namespace[]{Namespace.USER, Namespace.PORTAL, Namespace.HELP, Namespace.PROJECT, Namespace.TEMPLATE});
    public final ConcurrentHashMap namespaceMap = new ConcurrentHashMap();
    public final UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1 coroutineExceptionHandler = new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 9);
    public final ArrayList recentSearchList = new ArrayList();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NamespaceAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ RecentSearchesFragment this$0;

        public /* synthetic */ NamespaceAdapter(RecentSearchesFragment recentSearchesFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = recentSearchesFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            int i = this.$r8$classId;
            RecentSearchesFragment recentSearchesFragment = this.this$0;
            switch (i) {
                case 0:
                    return recentSearchesFragment.namespaceHints.size() + 1;
                default:
                    return recentSearchesFragment.recentSearchList.size();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String concat;
            switch (this.$r8$classId) {
                case 0:
                    NamespaceItemViewHolder namespaceItemViewHolder = (NamespaceItemViewHolder) viewHolder;
                    Namespace namespace = (Namespace) CollectionsKt.getOrNull(this.this$0.namespaceHints, i - 1);
                    boolean z = namespace == null;
                    View view = namespaceItemViewHolder.itemView;
                    view.getClass();
                    TextView textView = (TextView) view;
                    RecentSearchesFragment recentSearchesFragment = RecentSearchesFragment.this;
                    textView.setOnClickListener(namespaceItemViewHolder);
                    if (z) {
                        concat = recentSearchesFragment.getString(R.string.search_namespaces);
                    } else {
                        ConcurrentHashMap concurrentHashMap = recentSearchesFragment.namespaceMap;
                        SearchFragment searchFragment = recentSearchesFragment.callback;
                        Map map = (Map) concurrentHashMap.get(searchFragment != null ? searchFragment.searchLanguageCode : null);
                        String str = map != null ? (String) map.get(namespace) : null;
                        if (str == null) {
                            str = "";
                        }
                        concat = str.concat(":");
                    }
                    textView.setText(concat);
                    textView.setEnabled(!z);
                    Context requireContext = recentSearchesFragment.requireContext();
                    int i2 = z ? R.attr.primary_color : R.attr.progressive_color;
                    TypedValue typedValue = new TypedValue();
                    TypedValue typedValue2 = requireContext.getTheme().resolveAttribute(i2, typedValue, true) ? typedValue : null;
                    if (typedValue2 != null) {
                        textView.setTextColor(typedValue2.data);
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i2, "Attribute not found; ID="));
                        return;
                    }
                default:
                    RecentSearchItemViewHolder recentSearchItemViewHolder = (RecentSearchItemViewHolder) viewHolder;
                    recentSearchItemViewHolder.recentSearch = (RecentSearch) RecentSearchesFragment.this.recentSearchList.get(i);
                    View view2 = recentSearchItemViewHolder.itemView;
                    view2.setOnClickListener(recentSearchItemViewHolder);
                    TextView textView2 = (TextView) view2;
                    RecentSearch recentSearch = recentSearchItemViewHolder.recentSearch;
                    if (recentSearch != null) {
                        textView2.setText(recentSearch.text);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("recentSearch");
                        throw null;
                    }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            RecentSearchesFragment recentSearchesFragment = this.this$0;
            switch (i2) {
                case 0:
                    View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_namespace, viewGroup, false);
                    inflate.getClass();
                    return recentSearchesFragment.new NamespaceItemViewHolder(inflate);
                default:
                    View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_recent, viewGroup, false);
                    inflate2.getClass();
                    return recentSearchesFragment.new RecentSearchItemViewHolder(inflate2);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NamespaceItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public NamespaceItemViewHolder(View view) {
            super(view);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            SearchFragment searchFragment = RecentSearchesFragment.this.callback;
            if (searchFragment != null) {
                searchFragment.switchToSearch(((TextView) view).getText().toString());
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentSearchItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, SwipeableItemTouchHelperCallback.Callback {
        public RecentSearch recentSearch;

        public RecentSearchItemViewHolder(View view) {
            super(view);
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final boolean isSwipeable() {
            return true;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            String obj = ((TextView) view).getText().toString();
            RecentSearchesFragment recentSearchesFragment = RecentSearchesFragment.this;
            SVGAndroidRenderer instrument = ContextKt.getInstrument(recentSearchesFragment.requireActivity());
            if (instrument != null) {
                Map singletonMap = Collections.singletonMap("query", obj);
                singletonMap.getClass();
                SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "recent_search", null, singletonMap, 118);
            }
            SearchFragment searchFragment = recentSearchesFragment.callback;
            if (searchFragment != null) {
                searchFragment.switchToSearch(obj);
            }
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final void onSwipe() {
            RecentSearchesFragment recentSearchesFragment = RecentSearchesFragment.this;
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(recentSearchesFragment), recentSearchesFragment.coroutineExceptionHandler, null, new PageActivity$onCreate$1$1$1(this, recentSearchesFragment, null, 28), 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_search_recent, viewGroup, false);
        int i2 = R.id.add_languages_button;
        Button button = (Button) Room.findChildViewById(inflate, R.id.add_languages_button);
        if (button != null) {
            i2 = R.id.list_title;
            if (((TextView) Room.findChildViewById(inflate, R.id.list_title)) != null) {
                i2 = R.id.namespacesContainer;
                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.namespacesContainer);
                if (linearLayout != null) {
                    i2 = R.id.namespaces_recycler;
                    RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.namespaces_recycler);
                    if (recyclerView != null) {
                        i2 = R.id.recent_searches;
                        LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.recent_searches);
                        if (linearLayout2 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                            i2 = R.id.recent_searches_delete_button;
                            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.recent_searches_delete_button);
                            if (imageView != null) {
                                i2 = R.id.recentSearchesHeaderContainer;
                                if (((FrameLayout) Room.findChildViewById(inflate, R.id.recentSearchesHeaderContainer)) != null) {
                                    i2 = R.id.recent_searches_recycler;
                                    RecyclerView recyclerView2 = (RecyclerView) Room.findChildViewById(inflate, R.id.recent_searches_recycler);
                                    if (recyclerView2 != null) {
                                        i2 = R.id.search_empty_container;
                                        LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.search_empty_container);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.search_empty_image;
                                            if (((ImageView) Room.findChildViewById(inflate, R.id.search_empty_image)) != null) {
                                                i2 = R.id.search_empty_message;
                                                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.search_empty_message);
                                                if (textView != null) {
                                                    this._binding = new NodeChain(constraintLayout, button, linearLayout, recyclerView, linearLayout2, constraintLayout, imageView, recyclerView2, linearLayout3, textView, 5);
                                                    imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.search.RecentSearchesFragment$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ RecentSearchesFragment f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i3 = i;
                                                            RecentSearchesFragment recentSearchesFragment = this.f$0;
                                                            switch (i3) {
                                                                case 0:
                                                                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(recentSearchesFragment.requireContext(), 0);
                                                                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = recentSearchesFragment.getString(R.string.clear_recent_searches_confirm);
                                                                    materialAlertDialogBuilder.setPositiveButton(recentSearchesFragment.getString(R.string.clear_recent_searches_confirm_yes), (DialogInterface.OnClickListener) new PageFragment$$ExternalSyntheticLambda28(8, recentSearchesFragment));
                                                                    materialAlertDialogBuilder.setNegativeButton(recentSearchesFragment.getString(R.string.clear_recent_searches_confirm_no), (DialogInterface.OnClickListener) null);
                                                                    materialAlertDialogBuilder.show();
                                                                    break;
                                                                default:
                                                                    SearchFragment searchFragment = recentSearchesFragment.callback;
                                                                    if (searchFragment != null) {
                                                                        searchFragment.onLangButtonClick();
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    NodeChain nodeChain = this._binding;
                                                    nodeChain.getClass();
                                                    final int i3 = 1;
                                                    ((Button) nodeChain.sentinelHead).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.search.RecentSearchesFragment$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ RecentSearchesFragment f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i32 = i3;
                                                            RecentSearchesFragment recentSearchesFragment = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(recentSearchesFragment.requireContext(), 0);
                                                                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = recentSearchesFragment.getString(R.string.clear_recent_searches_confirm);
                                                                    materialAlertDialogBuilder.setPositiveButton(recentSearchesFragment.getString(R.string.clear_recent_searches_confirm_yes), (DialogInterface.OnClickListener) new PageFragment$$ExternalSyntheticLambda28(8, recentSearchesFragment));
                                                                    materialAlertDialogBuilder.setNegativeButton(recentSearchesFragment.getString(R.string.clear_recent_searches_confirm_no), (DialogInterface.OnClickListener) null);
                                                                    materialAlertDialogBuilder.show();
                                                                    break;
                                                                default:
                                                                    SearchFragment searchFragment = recentSearchesFragment.callback;
                                                                    if (searchFragment != null) {
                                                                        searchFragment.onLangButtonClick();
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    NodeChain nodeChain2 = this._binding;
                                                    nodeChain2.getClass();
                                                    RecyclerView recyclerView3 = (RecyclerView) nodeChain2.buffer;
                                                    requireActivity();
                                                    recyclerView3.setLayoutManager(new LinearLayoutManager(1));
                                                    NodeChain nodeChain3 = this._binding;
                                                    nodeChain3.getClass();
                                                    RecyclerView recyclerView4 = (RecyclerView) nodeChain3.outerCoordinator;
                                                    requireActivity();
                                                    recyclerView4.setLayoutManager(new LinearLayoutManager(0));
                                                    NodeChain nodeChain4 = this._binding;
                                                    nodeChain4.getClass();
                                                    ((RecyclerView) nodeChain4.buffer).setAdapter(new NamespaceAdapter(this, i3));
                                                    SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = new SwipeableItemTouchHelperCallback(requireContext());
                                                    swipeableItemTouchHelperCallback.swipeableEnabled = true;
                                                    ItemTouchHelper itemTouchHelper = new ItemTouchHelper(swipeableItemTouchHelperCallback);
                                                    NodeChain nodeChain5 = this._binding;
                                                    nodeChain5.getClass();
                                                    itemTouchHelper.attachToRecyclerView((RecyclerView) nodeChain5.buffer);
                                                    NodeChain nodeChain6 = this._binding;
                                                    nodeChain6.getClass();
                                                    View view = new View[]{(ImageView) nodeChain6.current}[0];
                                                    RegexKt.setTooltipText(view, view.getContentDescription());
                                                    NodeChain nodeChain7 = this._binding;
                                                    nodeChain7.getClass();
                                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) nodeChain7.layoutNode;
                                                    constraintLayout2.getClass();
                                                    return constraintLayout2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this._binding = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateList(kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.RecentSearchesFragment.updateList(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
