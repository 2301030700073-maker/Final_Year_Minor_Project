package org.wikipedia.readinglist;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.Preference;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.snackbar.Snackbar;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\b"}, d2 = {"Lorg/wikipedia/readinglist/AddToReadingListDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "1", "2", "ReadingListItemHolder", "DiffLinesAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class AddToReadingListDialog extends ExtendedBottomSheetDialogFragment {
    public MultipartBody.Builder _binding;
    public DiffUtil$DiffLinesAdapter adapter;
    public final Preference.AnonymousClass1 createClickListener;
    public DialogInterface.OnDismissListener dismissListener;
    public final ArrayList displayedLists;
    public final AddToReadingListDialog$showCreateListDialog$2 listItemCallback;
    public List readingLists;
    public boolean showDefaultList;
    public ArrayList titles;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingListItemHolder extends RecyclerView.ViewHolder {
    }

    public AddToReadingListDialog() {
        super(false);
        this.createClickListener = new Preference.AnonymousClass1(10, this);
        this.displayedLists = new ArrayList();
        this.listItemCallback = new AddToReadingListDialog$showCreateListDialog$2(this);
        this.readingLists = EmptyList.INSTANCE;
    }

    public final void addAndDismiss(ReadingList readingList, ArrayList arrayList) {
        int size = readingList.pages.size();
        arrayList.getClass();
        if (arrayList.size() + size <= 5000) {
            commitChanges(readingList, arrayList);
            return;
        }
        String string = getString(R.string.reading_list_article_limit_message, readingList.getTitle(), 5000);
        string.getClass();
        ShareUtil.makeSnackbar$default(requireActivity(), string, 0, 12).show();
        dismiss();
    }

    public void commitChanges(ReadingList readingList, List list) {
        readingList.getClass();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 26), null, new RealImageLoader$execute$2(list, this, readingList, null, 19), 2);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.fragment.app.DialogFragment
    public final void dismiss() {
        super.dismiss();
        DialogInterface.OnDismissListener onDismissListener = this.dismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(null);
        }
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList parcelableArrayList = Room.getParcelableArrayList(requireArguments(), "pageTitleList", PageTitle.class);
        parcelableArrayList.getClass();
        this.titles = parcelableArrayList;
        Serializable serializable = requireArguments().getSerializable("invokeSource");
        serializable.getClass();
        this.showDefaultList = requireArguments().getBoolean("showDefaultList");
        this.adapter = new DiffUtil$DiffLinesAdapter(6, this);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.dialog_add_to_reading_list, viewGroup, false);
        int i = R.id.create_button;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.create_button);
        if (linearLayout != null) {
            i = R.id.dialog_title;
            if (((TextView) Room.findChildViewById(inflate, R.id.dialog_title)) != null) {
                i = R.id.list_of_lists;
                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.list_of_lists);
                if (recyclerView != null) {
                    i = R.id.lists_container;
                    if (((LinearLayout) Room.findChildViewById(inflate, R.id.lists_container)) != null) {
                        this._binding = new MultipartBody.Builder((FrameLayout) inflate, linearLayout, recyclerView);
                        requireActivity();
                        recyclerView.setLayoutManager(new LinearLayoutManager(1));
                        MultipartBody.Builder builder = this._binding;
                        builder.getClass();
                        RecyclerView recyclerView2 = (RecyclerView) builder.parts;
                        DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = this.adapter;
                        if (diffUtil$DiffLinesAdapter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            throw null;
                        }
                        recyclerView2.setAdapter(diffUtil$DiffLinesAdapter);
                        MultipartBody.Builder builder2 = this._binding;
                        builder2.getClass();
                        ((LinearLayout) builder2.type).setOnClickListener(this.createClickListener);
                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 28), null, new AddToReadingListDialog$updateLists$2(this, null), 2);
                        MultipartBody.Builder builder3 = this._binding;
                        builder3.getClass();
                        FrameLayout frameLayout = (FrameLayout) builder3.boundary;
                        frameLayout.getClass();
                        return frameLayout;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        super.onDestroyView();
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        MultipartBody.Builder builder = this._binding;
        builder.getClass();
        Object parent = ((FrameLayout) builder.boundary).getParent();
        parent.getClass();
        BottomSheetBehavior.from((View) parent).setPeekHeight(Okio__OkioKt.roundedDpToPx(Okio__OkioKt.getDimension(R.dimen.readingListSheetPeekHeight)));
    }

    public final void showCreateListDialog() {
        AppCompatActivity requireActivity = requireActivity();
        List list = this.readingLists;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        TabUtil.readingListTitleDialog(requireActivity, "", "", arrayList, new AddToReadingListDialog$showCreateListDialog$2(this)).show();
    }

    public final void showViewListSnackBar(ReadingList readingList, String str) {
        readingList.getClass();
        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity(), str, 0, 12);
        makeSnackbar$default.setAction(R.string.reading_list_added_view_button, new DiffLineView$$ExternalSyntheticLambda0(18, readingList));
        makeSnackbar$default.show();
    }
}
