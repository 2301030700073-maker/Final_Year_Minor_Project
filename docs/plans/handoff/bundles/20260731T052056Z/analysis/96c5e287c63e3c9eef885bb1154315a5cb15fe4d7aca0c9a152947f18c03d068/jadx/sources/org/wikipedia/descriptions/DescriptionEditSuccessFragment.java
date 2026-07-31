package org.wikipedia.descriptions;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.descriptions.DescriptionEditSuccessView;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;", "<init>", "()V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditSuccessFragment extends Fragment implements DescriptionEditSuccessView.Callback {
    public OkHttpCall.AnonymousClass1 _binding;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_description_edit_success, viewGroup, false);
        if (inflate == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
            return null;
        }
        DescriptionEditSuccessView descriptionEditSuccessView = (DescriptionEditSuccessView) inflate;
        this._binding = new OkHttpCall.AnonymousClass1(7, descriptionEditSuccessView, descriptionEditSuccessView);
        descriptionEditSuccessView.setCallback(this);
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        return (DescriptionEditSuccessView) anonymousClass1.val$callback;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        ((DescriptionEditSuccessView) anonymousClass1.this$0).setCallback(null);
        this._binding = null;
        this.mCalled = true;
    }
}
