package org.wikipedia.suggestededits;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.collection.internal.Lock;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.settings.AppIconDialog;
import org.wikipedia.views.PlainPasteEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "org/wikipedia/suggestededits/SuggestedEditsImageTagsFragment", "ResultItemHolder", "AppIconAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagDialog extends DialogFragment {
    public DefaultSocket _binding;
    public StandaloneCoroutine searchJob;
    public SearchView.AnonymousClass10 textWatcher;
    public String currentSearchTerm = "";
    public final AppIconDialog.AppIconAdapter adapter = new AppIconDialog.AppIconAdapter(this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ResultItemHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public ResultItemHolder(View view) {
            super(view);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            Object tag = view.getTag();
            tag.getClass();
            ImageTag imageTag = (ImageTag) tag;
            SuggestedEditsImageTagDialog suggestedEditsImageTagDialog = SuggestedEditsImageTagDialog.this;
            SuggestedEditsImageTagsFragment callback = suggestedEditsImageTagDialog.callback();
            if (callback != null) {
                ArrayList arrayList = callback.tagList;
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        imageTag.isSelected = true;
                        arrayList.add(imageTag);
                        break;
                    } else {
                        ImageTag imageTag2 = (ImageTag) it.next();
                        if (Intrinsics.areEqual(imageTag2.wikidataId, imageTag.wikidataId)) {
                            imageTag2.isSelected = true;
                            break;
                        }
                    }
                }
                callback.updateTagChips();
            }
            suggestedEditsImageTagDialog.dismissInternal(false, false);
        }
    }

    public final void applyResults(List list) {
        AppIconDialog.AppIconAdapter appIconAdapter = this.adapter;
        appIconAdapter.getClass();
        appIconAdapter.list = list;
        appIconAdapter.notifyDataSetChanged();
        int length = this.currentSearchTerm.length();
        DefaultSocket defaultSocket = this._binding;
        if (length == 0) {
            defaultSocket.getClass();
            ((TextView) defaultSocket.sink).setVisibility(8);
            DefaultSocket defaultSocket2 = this._binding;
            defaultSocket2.getClass();
            ((RecyclerView) defaultSocket2.closeBits).setVisibility(8);
            DefaultSocket defaultSocket3 = this._binding;
            defaultSocket3.getClass();
            ((View) defaultSocket3.socket).setVisibility(4);
            return;
        }
        defaultSocket.getClass();
        ((View) defaultSocket.socket).setVisibility(0);
        boolean isEmpty = list.isEmpty();
        DefaultSocket defaultSocket4 = this._binding;
        if (isEmpty) {
            defaultSocket4.getClass();
            ((TextView) defaultSocket4.sink).setVisibility(0);
            DefaultSocket defaultSocket5 = this._binding;
            defaultSocket5.getClass();
            ((RecyclerView) defaultSocket5.closeBits).setVisibility(8);
            return;
        }
        defaultSocket4.getClass();
        ((TextView) defaultSocket4.sink).setVisibility(8);
        DefaultSocket defaultSocket6 = this._binding;
        defaultSocket6.getClass();
        ((RecyclerView) defaultSocket6.closeBits).setVisibility(0);
    }

    public final SuggestedEditsImageTagsFragment callback() {
        ComponentCallbacks activity;
        if (SuggestedEditsImageTagsFragment.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (SuggestedEditsImageTagsFragment.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (SuggestedEditsImageTagsFragment.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = SuggestedEditsImageTagsFragment.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (SuggestedEditsImageTagsFragment) activity;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        RoundedCornerTreatment roundedCornerTreatment = new RoundedCornerTreatment();
        RoundedCornerTreatment roundedCornerTreatment2 = new RoundedCornerTreatment();
        RoundedCornerTreatment roundedCornerTreatment3 = new RoundedCornerTreatment();
        RoundedCornerTreatment roundedCornerTreatment4 = new RoundedCornerTreatment();
        Lock lock = new Lock(1);
        Lock lock2 = new Lock(1);
        Lock lock3 = new Lock(1);
        Lock lock4 = new Lock(1);
        float dpToPx = Okio__OkioKt.dpToPx(6.0f);
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(dpToPx);
        AbsoluteCornerSize absoluteCornerSize2 = new AbsoluteCornerSize(dpToPx);
        AbsoluteCornerSize absoluteCornerSize3 = new AbsoluteCornerSize(dpToPx);
        AbsoluteCornerSize absoluteCornerSize4 = new AbsoluteCornerSize(dpToPx);
        ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
        shapeAppearanceModel.topLeftCorner = roundedCornerTreatment;
        shapeAppearanceModel.topRightCorner = roundedCornerTreatment2;
        shapeAppearanceModel.bottomRightCorner = roundedCornerTreatment3;
        shapeAppearanceModel.bottomLeftCorner = roundedCornerTreatment4;
        shapeAppearanceModel.topLeftCornerSize = absoluteCornerSize;
        shapeAppearanceModel.topRightCornerSize = absoluteCornerSize2;
        shapeAppearanceModel.bottomRightCornerSize = absoluteCornerSize3;
        shapeAppearanceModel.bottomLeftCornerSize = absoluteCornerSize4;
        shapeAppearanceModel.topEdge = lock;
        shapeAppearanceModel.rightEdge = lock2;
        shapeAppearanceModel.bottomEdge = lock3;
        shapeAppearanceModel.leftEdge = lock4;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
        materialShapeDrawable.setFillColor(Cache.Companion.getThemedColorStateList(requireActivity(), R.attr.background_color));
        Window window = onCreateDialog.getWindow();
        window.getClass();
        materialShapeDrawable.setElevation(window.getDecorView().getElevation());
        if (Build.VERSION.SDK_INT <= 28) {
            int roundedDpToPx = Okio__OkioKt.roundedDpToPx(16.0f);
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) materialShapeDrawable, roundedDpToPx, roundedDpToPx, roundedDpToPx, roundedDpToPx);
            Window window2 = onCreateDialog.getWindow();
            window2.getClass();
            window2.setBackgroundDrawable(insetDrawable);
        } else {
            Window window3 = onCreateDialog.getWindow();
            window3.getClass();
            window3.setBackgroundDrawable(materialShapeDrawable);
        }
        Window window4 = onCreateDialog.getWindow();
        window4.getClass();
        WindowManager.LayoutParams attributes = window4.getAttributes();
        attributes.gravity = 48;
        Window window5 = onCreateDialog.getWindow();
        window5.getClass();
        window5.setAttributes(attributes);
        return onCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.dialog_image_tag_select, viewGroup, false);
        int i = R.id.imageTagsDivider;
        View findChildViewById = Room.findChildViewById(inflate, R.id.imageTagsDivider);
        if (findChildViewById != null) {
            i = R.id.imageTagsRecycler;
            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.imageTagsRecycler);
            if (recyclerView != null) {
                LinearLayout linearLayout = (LinearLayout) inflate;
                i = R.id.imageTagsSearchText;
                PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.imageTagsSearchText);
                if (plainPasteEditText != null) {
                    i = R.id.noResultsText;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.noResultsText);
                    if (textView != null) {
                        this._binding = new DefaultSocket(linearLayout, findChildViewById, recyclerView, plainPasteEditText, textView, 12);
                        linearLayout.getClass();
                        return linearLayout;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        StandaloneCoroutine standaloneCoroutine = this.searchJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) defaultSocket.source;
        SearchView.AnonymousClass10 anonymousClass10 = this.textWatcher;
        if (anonymousClass10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textWatcher");
            throw null;
        }
        plainPasteEditText.removeTextChangedListener(anonymousClass10);
        this._binding = null;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        dialogInterface.getClass();
        super.onDismiss(dialogInterface);
        SuggestedEditsImageTagsFragment callback = callback();
        if (callback != null) {
            String str = this.currentSearchTerm;
            str.getClass();
            callback.lastSearchTerm = str;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        Window window;
        super.onStart();
        try {
            if (requireArguments().getBoolean("useClipboardText")) {
                Object systemService = requireContext().getSystemService("clipboard");
                systemService.getClass();
                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                if (clipboardManager.hasPrimaryClip() && clipboardManager.getPrimaryClip() != null) {
                    ClipData primaryClip = clipboardManager.getPrimaryClip();
                    primaryClip.getClass();
                    String obj = primaryClip.getItemAt(primaryClip.getItemCount() - 1).coerceToText(requireContext()).toString();
                    if (obj.length() > 0) {
                        DefaultSocket defaultSocket = this._binding;
                        defaultSocket.getClass();
                        ((PlainPasteEditText) defaultSocket.source).setText(obj);
                        DefaultSocket defaultSocket2 = this._binding;
                        defaultSocket2.getClass();
                        ((PlainPasteEditText) defaultSocket2.source).selectAll();
                    }
                }
            } else {
                String string = requireArguments().getString("lastText");
                string.getClass();
                if (string.length() > 0) {
                    DefaultSocket defaultSocket3 = this._binding;
                    defaultSocket3.getClass();
                    PlainPasteEditText plainPasteEditText = (PlainPasteEditText) defaultSocket3.source;
                    String string2 = requireArguments().getString("lastText");
                    string2.getClass();
                    plainPasteEditText.setText(string2);
                    DefaultSocket defaultSocket4 = this._binding;
                    defaultSocket4.getClass();
                    ((PlainPasteEditText) defaultSocket4.source).selectAll();
                }
            }
        } catch (Exception unused) {
        }
        Dialog dialog = this.mDialog;
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setSoftInputMode(5);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        ((RecyclerView) defaultSocket.closeBits).setLayoutManager(new LinearLayoutManager(1));
        DefaultSocket defaultSocket2 = this._binding;
        defaultSocket2.getClass();
        ((RecyclerView) defaultSocket2.closeBits).setAdapter(this.adapter);
        DefaultSocket defaultSocket3 = this._binding;
        defaultSocket3.getClass();
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) defaultSocket3.source;
        SearchView.AnonymousClass10 anonymousClass10 = new SearchView.AnonymousClass10(9, this);
        plainPasteEditText.addTextChangedListener(anonymousClass10);
        this.textWatcher = anonymousClass10;
        applyResults(EmptyList.INSTANCE);
    }
}
