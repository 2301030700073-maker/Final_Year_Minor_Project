package b.i.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* renamed from: b.i.b.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ActivityC0124t extends b.a.g implements b.e.b.a {
    public static final String FRAGMENTS_TAG = "android:support:fragments";
    public boolean mCreated;
    public final b.j.l mFragmentLifecycleRegistry;
    public final C mFragments;
    public boolean mResumed;
    public boolean mStopped;

    public ActivityC0124t() {
        C0123s c0123s = new C0123s(this);
        b.e.b.d.d(c0123s, "callbacks == null");
        this.mFragments = new C(c0123s);
        this.mFragmentLifecycleRegistry = new b.j.l(this);
        this.mStopped = true;
    }

    private void markFragmentsCreated() {
        while (markState(getSupportFragmentManager(), Lifecycle$State.CREATED)) {
        }
    }

    public static boolean markState(X x, Lifecycle$State lifecycle$State) {
        Lifecycle$State lifecycle$State2 = Lifecycle$State.STARTED;
        boolean z = false;
        for (r rVar : x.f881c.i()) {
            if (rVar != null) {
                if (rVar.getHost() != null) {
                    z |= markState(rVar.getChildFragmentManager(), lifecycle$State);
                }
                B0 b0 = rVar.mViewLifecycleOwner;
                if (b0 != null) {
                    if (((b.j.l) b0.getLifecycle()).f996b.compareTo(lifecycle$State2) >= 0) {
                        rVar.mViewLifecycleOwner.f832a.e(lifecycle$State);
                        z = true;
                    }
                }
                if (rVar.mLifecycleRegistry.f996b.compareTo(lifecycle$State2) >= 0) {
                    rVar.mLifecycleRegistry.e(lifecycle$State);
                    z = true;
                }
            }
        }
        return z;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f834a.f839d.f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            b.k.a.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.f834a.f839d.y(str, fileDescriptor, printWriter, strArr);
    }

    public X getSupportFragmentManager() {
        return this.mFragments.f834a.f839d;
    }

    @Deprecated
    public b.k.a.a getSupportLoaderManager() {
        return b.k.a.a.b(this);
    }

    @Override // b.a.g, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(r rVar) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.a();
        this.mFragments.f834a.f839d.k(configuration);
    }

    @Override // b.a.g, b.e.b.f, android.app.Activity
    public void onCreate(Bundle bundle) {
        D d2 = this.mFragments.f834a;
        d2.f839d.c(d2, d2, null);
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable(FRAGMENTS_TAG);
            D d3 = this.mFragments.f834a;
            if (!(d3 instanceof b.j.I)) {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
            d3.f839d.Z(parcelable);
        }
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_CREATE);
        this.mFragments.f834a.f839d.m();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        C c2 = this.mFragments;
        return c2.f834a.f839d.n(menu, getMenuInflater()) | onCreatePanelMenu;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f834a.f839d.o();
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.f834a.f839d.p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.f834a.f839d.r(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.f834a.f839d.l(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.f834a.f839d.q(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.f834a.f839d.s(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f834a.f839d.w(5);
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.f834a.f839d.u(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Deprecated
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return super.onPreparePanel(i, view, menu);
        }
        return this.mFragments.f834a.f839d.v(menu) | onPrepareOptionsPanel(view, menu);
    }

    @Override // b.a.g, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.a();
        this.mFragments.f834a.f839d.C(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_RESUME);
        X x = this.mFragments.f834a.f839d;
        x.D = false;
        x.E = false;
        x.L.i = false;
        x.w(7);
    }

    @Override // b.a.g, b.e.b.f, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_STOP);
        Parcelable a0 = this.mFragments.f834a.f839d.a0();
        if (a0 != null) {
            bundle.putParcelable(FRAGMENTS_TAG, a0);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            X x = this.mFragments.f834a.f839d;
            x.D = false;
            x.E = false;
            x.L.i = false;
            x.w(4);
        }
        this.mFragments.a();
        this.mFragments.f834a.f839d.C(true);
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_START);
        X x2 = this.mFragments.f834a.f839d;
        x2.D = false;
        x2.E = false;
        x2.L.i = false;
        x2.w(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        X x = this.mFragments.f834a.f839d;
        x.E = true;
        x.L.i = true;
        x.w(4);
        this.mFragmentLifecycleRegistry.c(Lifecycle$Event.ON_STOP);
    }

    public void setEnterSharedElementCallback(b.e.b.n nVar) {
        b.e.b.b.k(this);
    }

    public void setExitSharedElementCallback(b.e.b.n nVar) {
        b.e.b.b.l(this);
    }

    public void startActivityFromFragment(r rVar, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityFromFragment(rVar, intent, i, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(r rVar, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i == -1) {
            b.e.b.b.q(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            rVar.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        b.e.b.b.b(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        b.e.b.b.h(this);
    }

    public void supportStartPostponedEnterTransition() {
        b.e.b.b.r(this);
    }

    @Override // b.e.b.a
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }

    public void startActivityFromFragment(r rVar, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            b.e.b.b.p(this, intent, -1, bundle);
        } else {
            rVar.startActivityForResult(intent, i, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    public ActivityC0124t(int i) {
        super(i);
        C0123s c0123s = new C0123s(this);
        b.e.b.d.d(c0123s, "callbacks == null");
        this.mFragments = new C(c0123s);
        this.mFragmentLifecycleRegistry = new b.j.l(this);
        this.mStopped = true;
    }
}
