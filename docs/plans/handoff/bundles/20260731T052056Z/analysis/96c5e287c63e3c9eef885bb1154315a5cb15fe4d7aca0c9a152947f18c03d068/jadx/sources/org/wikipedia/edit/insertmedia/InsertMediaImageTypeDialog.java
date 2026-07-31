package org.wikipedia.edit.insertmedia;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "org/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment", "1", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertMediaImageTypeDialog extends ExtendedBottomSheetDialogFragment {
    public MultipartBody.Builder _binding;
    public final String[] imageTypeList;
    public View[] imageTypeOptions;

    public InsertMediaImageTypeDialog() {
        super(false);
        this.imageTypeList = new String[]{"img_thumbnail", "img_framed", "img_frameless", "basic"};
    }

    public static void updateOptionView$1(View view, boolean z) {
        ((TextView) view.findViewWithTag("text")).setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        ((ImageView) view.findViewWithTag("check")).setVisibility(z ? 0 : 8);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.dialog_insert_media_type, viewGroup, false);
        int i2 = R.id.imageTypeBasic;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.imageTypeBasic);
        View view = null;
        if (linearLayout != null) {
            i2 = R.id.imageTypeFrame;
            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.imageTypeFrame);
            if (linearLayout2 != null) {
                i2 = R.id.imageTypeFrameless;
                LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.imageTypeFrameless);
                if (linearLayout3 != null) {
                    i2 = R.id.imageTypeThumbnail;
                    LinearLayout linearLayout4 = (LinearLayout) Room.findChildViewById(inflate, R.id.imageTypeThumbnail);
                    if (linearLayout4 != null) {
                        MultipartBody.Builder builder = new MultipartBody.Builder();
                        builder.boundary = (LinearLayout) inflate;
                        builder.type = linearLayout;
                        builder.parts = linearLayout3;
                        this._binding = builder;
                        MultipartBody.Builder builder2 = this._binding;
                        builder2.getClass();
                        LinearLayout linearLayout5 = (LinearLayout) builder2.parts;
                        MultipartBody.Builder builder3 = this._binding;
                        builder3.getClass();
                        View[] viewArr = {linearLayout4, linearLayout2, linearLayout5, (LinearLayout) builder3.type};
                        this.imageTypeOptions = viewArr;
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < 4) {
                            View view2 = viewArr[i3];
                            view2.setTag(this.imageTypeList[i4]);
                            view2.setOnClickListener(new Preference.AnonymousClass1(9, this));
                            i3++;
                            i4++;
                        }
                        View[] viewArr2 = this.imageTypeOptions;
                        if (viewArr2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageTypeOptions");
                            throw null;
                        }
                        for (View view3 : viewArr2) {
                            updateOptionView$1(view3, false);
                        }
                        String str = ((InsertMediaActivity) requireActivity()).getViewModel().imageType;
                        View[] viewArr3 = this.imageTypeOptions;
                        if (viewArr3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageTypeOptions");
                            throw null;
                        }
                        int length = viewArr3.length;
                        while (true) {
                            if (i >= length) {
                                break;
                            }
                            View view4 = viewArr3[i];
                            if (Intrinsics.areEqual(view4.getTag(), str)) {
                                view = view4;
                                break;
                            }
                            i++;
                        }
                        if (view != null) {
                            updateOptionView$1(view, true);
                        }
                        MultipartBody.Builder builder4 = this._binding;
                        builder4.getClass();
                        LinearLayout linearLayout6 = (LinearLayout) builder4.boundary;
                        linearLayout6.getClass();
                        return linearLayout6;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        super.onDestroyView();
    }
}
