package org.schabi.newpipe;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.livefront.bridge.Bridge;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseFragment extends Fragment {
    public AppCompatActivity activity;
    public final String TAG = getClass().getSimpleName() + "@" + Integer.toHexString(hashCode());
    protected boolean useAsFrontPage = false;

    static {
        int i = MainActivity.$r8$clinit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public final FragmentManager getFM() {
        ?? r1 = this;
        while (r1.getParentFragment() != null) {
            r1 = r1.getParentFragment();
        }
        return r1.getFragmentManager();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.activity = (AppCompatActivity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bridge.restoreInstanceState(this, bundle);
        if (bundle != null) {
            onRestoreInstanceState(bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.activity = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        initViews(view, bundle);
        initListeners();
    }

    public void setTitle(String str) {
        AppCompatActivity appCompatActivity;
        if (this.useAsFrontPage || (appCompatActivity = this.activity) == null || appCompatActivity.getSupportActionBar() == null) {
            return;
        }
        this.activity.getSupportActionBar().setDisplayShowTitleEnabled(true);
        this.activity.getSupportActionBar().setTitle(str);
    }

    public final void useAsFrontPage(boolean z) {
        this.useAsFrontPage = z;
    }

    public void initListeners() {
    }

    public void onRestoreInstanceState(Bundle bundle) {
    }

    public void initViews(View view, Bundle bundle) {
    }
}
