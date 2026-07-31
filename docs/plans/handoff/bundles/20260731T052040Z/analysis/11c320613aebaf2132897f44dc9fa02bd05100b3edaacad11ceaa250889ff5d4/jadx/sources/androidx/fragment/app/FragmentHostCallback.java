package androidx.fragment.app;

import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FragmentHostCallback extends FragmentContainer {
    public final AppCompatActivity activity;
    public final AppCompatActivity context;
    public final FragmentManagerImpl fragmentManager;
    public final Handler handler;

    public FragmentHostCallback(AppCompatActivity appCompatActivity) {
        Handler handler = new Handler();
        this.activity = appCompatActivity;
        this.context = appCompatActivity;
        this.handler = handler;
        this.fragmentManager = new FragmentManagerImpl();
    }
}
