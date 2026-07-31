package org.wikipedia.edit.templates;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.gson.GsonBuilder;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/edit/templates/InsertTemplateFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertTemplateFragment extends Fragment {
    public GsonBuilder _binding;
    public TemplatesSearchActivity activity;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = getLayoutInflater().inflate(R.layout.fragment_insert_template, viewGroup, false);
        ScrollView scrollView = (ScrollView) inflate;
        int i = R.id.templateDataDescription;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.templateDataDescription);
        if (textView != null) {
            i = R.id.templateDataLearnMoreButton;
            TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.templateDataLearnMoreButton);
            if (textView2 != null) {
                i = R.id.templateDataMissing;
                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.templateDataMissing);
                if (linearLayout != null) {
                    i = R.id.templateDataMissingText;
                    TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.templateDataMissingText);
                    if (textView3 != null) {
                        i = R.id.templateDataParamsContainer;
                        LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.templateDataParamsContainer);
                        if (linearLayout2 != null) {
                            i = R.id.templateDataTitle;
                            TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.templateDataTitle);
                            if (textView4 != null) {
                                this._binding = new GsonBuilder(scrollView, textView, textView2, linearLayout, textView3, linearLayout2, textView4, 11);
                                TemplatesSearchActivity templatesSearchActivity = (TemplatesSearchActivity) requireActivity();
                                this.activity = templatesSearchActivity;
                                ContextsKt supportActionBar = templatesSearchActivity.getSupportActionBar();
                                if (supportActionBar != null) {
                                    supportActionBar.setTitle(null);
                                }
                                GsonBuilder gsonBuilder = this._binding;
                                gsonBuilder.getClass();
                                ScrollView scrollView2 = (ScrollView) gsonBuilder.excluder;
                                scrollView2.getClass();
                                return scrollView2;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }
}
