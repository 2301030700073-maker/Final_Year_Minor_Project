package org.wikipedia.readinglist;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.PlainPasteEditText;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListPreviewSaveDialogView extends FrameLayout {
    public final MultipartBody.Builder binding;
    public OkHttpCall.AnonymousClass1 callback;
    public List currentReadingLists;
    public ReadingList readingList;
    public ReadingListMode readingListMode;
    public ArrayList savedReadingListPages;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingListItemHolder extends DefaultViewHolder implements View.OnClickListener {
        public final SVGAndroidRenderer itemBinding;
        public ReadingListPage readingListPage;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ReadingListItemHolder(com.caverock.androidsvg.SVGAndroidRenderer r2) {
            /*
                r0 = this;
                org.wikipedia.readinglist.ReadingListPreviewSaveDialogView.this = r1
                java.lang.Object r1 = r2.canvas
                androidx.constraintlayout.widget.ConstraintLayout r1 = (androidx.constraintlayout.widget.ConstraintLayout) r1
                r1.getClass()
                r0.<init>(r1)
                r0.itemBinding = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListPreviewSaveDialogView.ReadingListItemHolder.<init>(org.wikipedia.readinglist.ReadingListPreviewSaveDialogView, com.caverock.androidsvg.SVGAndroidRenderer):void");
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            ReadingListPreviewSaveDialogView readingListPreviewSaveDialogView = ReadingListPreviewSaveDialogView.this;
            ArrayList arrayList = readingListPreviewSaveDialogView.savedReadingListPages;
            if (arrayList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("savedReadingListPages");
                throw null;
            }
            ReadingListPage readingListPage = this.readingListPage;
            if (readingListPage == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readingListPage");
                throw null;
            }
            boolean contains = arrayList.contains(readingListPage);
            ArrayList arrayList2 = readingListPreviewSaveDialogView.savedReadingListPages;
            if (contains) {
                if (arrayList2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("savedReadingListPages");
                    throw null;
                }
                ReadingListPage readingListPage2 = this.readingListPage;
                if (readingListPage2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readingListPage");
                    throw null;
                }
                arrayList2.remove(readingListPage2);
            } else {
                if (arrayList2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("savedReadingListPages");
                    throw null;
                }
                ReadingListPage readingListPage3 = this.readingListPage;
                if (readingListPage3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readingListPage");
                    throw null;
                }
                arrayList2.add(readingListPage3);
            }
            updateState();
        }

        public final void updateState() {
            CheckBox checkBox = (CheckBox) this.itemBinding.parentStack;
            ReadingListPreviewSaveDialogView readingListPreviewSaveDialogView = ReadingListPreviewSaveDialogView.this;
            ArrayList arrayList = readingListPreviewSaveDialogView.savedReadingListPages;
            if (arrayList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("savedReadingListPages");
                throw null;
            }
            ReadingListPage readingListPage = this.readingListPage;
            if (readingListPage == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readingListPage");
                throw null;
            }
            checkBox.setChecked(arrayList.contains(readingListPage));
            readingListPreviewSaveDialogView.validateTitleAndList();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListPreviewSaveDialogView(Context context) {
        super(context, null);
        Continuation continuation = null;
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_reading_list_preview_save_dialog, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.readingListTitle;
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.readingListTitle);
        if (plainPasteEditText != null) {
            i = R.id.readingListTitleLayout;
            TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.readingListTitleLayout);
            if (textInputLayout != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recyclerView);
                if (recyclerView != null) {
                    this.binding = new MultipartBody.Builder(plainPasteEditText, textInputLayout, recyclerView);
                    this.currentReadingLists = EmptyList.INSTANCE;
                    this.readingListMode = ReadingListMode.PREVIEW;
                    setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                    recyclerView.setLayoutManager(new LinearLayoutManager(1));
                    recyclerView.addItemDecoration(new DrawableItemDecoration(context, true, true, true));
                    AwaitKt.launch$default(BitmapsKt.coroutineScope$default(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 3), null, new PageActivity$onCreate$1$1$1(25, this, continuation), 2);
                    plainPasteEditText.addTextChangedListener(new SearchView.AnonymousClass10(8, this));
                    return;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final ReadingListMode getReadingListMode() {
        return this.readingListMode;
    }

    public final void setReadingListMode(ReadingListMode readingListMode) {
        readingListMode.getClass();
        this.readingListMode = readingListMode;
    }

    public final void validateTitleAndList() {
        Button button;
        MultipartBody.Builder builder = this.binding;
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) builder.boundary;
        TextInputLayout textInputLayout = (TextInputLayout) builder.type;
        String valueOf = String.valueOf(plainPasteEditText.getText());
        List list = this.currentReadingLists;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((ReadingList) it.next()).getTitle().equals(valueOf)) {
                    textInputLayout.setError(getContext().getString(R.string.reading_list_title_exists, valueOf));
                    OkHttpCall.AnonymousClass1 anonymousClass1 = this.callback;
                    if (anonymousClass1 != null) {
                        anonymousClass1.onError();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("callback");
                        throw null;
                    }
                }
            }
        }
        if (valueOf.length() == 0) {
            textInputLayout.setError(null);
            OkHttpCall.AnonymousClass1 anonymousClass12 = this.callback;
            if (anonymousClass12 != null) {
                anonymousClass12.onError();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("callback");
                throw null;
            }
        }
        ArrayList arrayList = this.savedReadingListPages;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("savedReadingListPages");
            throw null;
        }
        if (arrayList.isEmpty()) {
            textInputLayout.setError(null);
            OkHttpCall.AnonymousClass1 anonymousClass13 = this.callback;
            if (anonymousClass13 != null) {
                anonymousClass13.onError();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("callback");
                throw null;
            }
        }
        textInputLayout.setError(null);
        OkHttpCall.AnonymousClass1 anonymousClass14 = this.callback;
        if (anonymousClass14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callback");
            throw null;
        }
        AlertDialog alertDialog = ((ReadingListFragment) anonymousClass14.val$callback).previewSaveDialog;
        if (alertDialog != null && (button = alertDialog.mAlert.mButtonPositive) != null) {
            button.setEnabled(true);
        }
        ((Ref$ObjectRef) anonymousClass14.this$0).element = valueOf;
    }
}
