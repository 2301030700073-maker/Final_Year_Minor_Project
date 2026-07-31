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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "org/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment", "1", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertMediaImagePositionDialog extends ExtendedBottomSheetDialogFragment {
    public OkHttpCall.AnonymousClass1 _binding;
    public final String[] imagePositionList;
    public View[] imagePositionOptions;

    public InsertMediaImagePositionDialog() {
        super(false);
        this.imagePositionList = new String[]{"img_right", "img_center", "img_left"};
    }

    public static void updateOptionView(View view, boolean z) {
        ((TextView) view.findViewWithTag("text")).setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        ((ImageView) view.findViewWithTag("check")).setVisibility(z ? 0 : 8);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.dialog_insert_media_position, viewGroup, false);
        int i2 = R.id.imagePositionCenter;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.imagePositionCenter);
        View view = null;
        if (linearLayout != null) {
            i2 = R.id.imagePositionLeft;
            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.imagePositionLeft);
            if (linearLayout2 != null) {
                i2 = R.id.imagePositionRight;
                LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.imagePositionRight);
                if (linearLayout3 != null) {
                    this._binding = new OkHttpCall.AnonymousClass1((LinearLayout) inflate, linearLayout, linearLayout2, linearLayout3);
                    OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
                    anonymousClass1.getClass();
                    View[] viewArr = {linearLayout3, linearLayout, (LinearLayout) anonymousClass1.this$0};
                    this.imagePositionOptions = viewArr;
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < 3) {
                        View view2 = viewArr[i3];
                        view2.setTag(this.imagePositionList[i4]);
                        view2.setOnClickListener(new Preference.AnonymousClass1(8, this));
                        i3++;
                        i4++;
                    }
                    View[] viewArr2 = this.imagePositionOptions;
                    if (viewArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imagePositionOptions");
                        throw null;
                    }
                    for (View view3 : viewArr2) {
                        updateOptionView(view3, false);
                    }
                    String str = ((InsertMediaActivity) requireActivity()).getViewModel().imagePosition;
                    View[] viewArr3 = this.imagePositionOptions;
                    if (viewArr3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imagePositionOptions");
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
                        updateOptionView(view, true);
                    }
                    OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
                    anonymousClass12.getClass();
                    LinearLayout linearLayout4 = (LinearLayout) anonymousClass12.val$callback;
                    linearLayout4.getClass();
                    return linearLayout4;
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
