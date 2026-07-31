package org.wikipedia.readinglist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentMostReadBinding;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/readinglist/SortReadingListsDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "org/wikipedia/readinglist/ReadingListsFragment", "DiffLinesAdapter", "SortItemHolder", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SortReadingListsDialog extends ExtendedBottomSheetDialogFragment {
    public FragmentMostReadBinding _binding;
    public DiffUtil$DiffLinesAdapter adapter;
    public int chosenSortOption;
    public List sortOptions;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SortItemHolder extends RecyclerView.ViewHolder {
        public final MultipartBody.Builder binding;

        public SortItemHolder(MultipartBody.Builder builder) {
            super((LinearLayout) builder.boundary);
            this.binding = builder;
        }
    }

    public SortReadingListsDialog() {
        super(false);
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.chosenSortOption = requireArguments().getInt("sortOption");
        String[] stringArray = getResources().getStringArray(R.array.sort_options);
        stringArray.getClass();
        List asList = Arrays.asList(stringArray);
        asList.getClass();
        this.sortOptions = asList;
        this.adapter = new DiffUtil$DiffLinesAdapter(10, this);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.dialog_sort_reading_lists, viewGroup, false);
        int i = R.id.sort_by;
        if (((TextView) Room.findChildViewById(inflate, R.id.sort_by)) != null) {
            i = R.id.sort_options_list;
            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.sort_options_list);
            if (recyclerView != null) {
                this._binding = new FragmentMostReadBinding((LinearLayout) inflate, recyclerView);
                DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = this.adapter;
                if (diffUtil$DiffLinesAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
                recyclerView.setAdapter(diffUtil$DiffLinesAdapter);
                FragmentMostReadBinding fragmentMostReadBinding = this._binding;
                fragmentMostReadBinding.getClass();
                fragmentMostReadBinding.mostReadRecyclerView.setLayoutManager(new LinearLayoutManager(1));
                FragmentMostReadBinding fragmentMostReadBinding2 = this._binding;
                fragmentMostReadBinding2.getClass();
                LinearLayout linearLayout = fragmentMostReadBinding2.rootView;
                linearLayout.getClass();
                return linearLayout;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }
}
