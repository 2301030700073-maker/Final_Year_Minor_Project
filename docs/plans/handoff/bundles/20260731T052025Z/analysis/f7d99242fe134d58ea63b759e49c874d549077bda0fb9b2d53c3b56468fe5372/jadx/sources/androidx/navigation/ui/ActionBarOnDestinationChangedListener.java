package androidx.navigation.ui;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.navigation.FloatingWindow;
import androidx.navigation.IntNavType;
import androidx.navigation.NavArgument;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHostController;
import androidx.navigation.NavType;
import androidx.navigation.internal.NavControllerImpl;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActionBarOnDestinationChangedListener {
    public final BaseActivity activity;
    public ObjectAnimator animator;
    public DrawerArrowDrawable arrowDrawable;
    public final Fragment.AnonymousClass7 configuration;
    public final Context context;
    public final WeakReference openableLayoutWeakReference;

    public ActionBarOnDestinationChangedListener(BaseActivity baseActivity, Fragment.AnonymousClass7 anonymousClass7) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) baseActivity.getDelegate();
        appCompatDelegateImpl.getClass();
        Context actionBarThemedContext = appCompatDelegateImpl.getActionBarThemedContext();
        actionBarThemedContext.getClass();
        this.context = actionBarThemedContext;
        this.configuration = anonymousClass7;
        this.openableLayoutWeakReference = null;
        this.activity = baseActivity;
    }

    public final void onDestinationChanged(NavHostController navHostController, NavDestination navDestination, Bundle bundle) {
        String stringBuffer;
        String valueOf;
        boolean z;
        Pair pair;
        navDestination.getClass();
        if (navDestination instanceof FloatingWindow) {
            return;
        }
        WeakReference weakReference = this.openableLayoutWeakReference;
        DrawerLayout drawerLayout = weakReference != null ? (DrawerLayout) weakReference.get() : null;
        if (weakReference != null && drawerLayout == null) {
            NavControllerImpl navControllerImpl = navHostController.impl;
            navControllerImpl.getClass();
            navControllerImpl.onDestinationChangedListeners.remove(this);
            return;
        }
        Context context = this.context;
        context.getClass();
        CharSequence charSequence = navDestination.label;
        if (charSequence == null) {
            stringBuffer = null;
        } else {
            Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequence);
            StringBuffer stringBuffer2 = new StringBuffer();
            Map m834toMapimpl = bundle != null ? Operation$State.m834toMapimpl(bundle) : EmptyMap.INSTANCE;
            while (matcher.find()) {
                String group = matcher.group(1);
                if (group == null || !m834toMapimpl.containsKey(group)) {
                    throw new IllegalArgumentException(("Could not find \"" + group + "\" in " + bundle + " to fill label \"" + ((Object) charSequence) + '\"').toString());
                }
                matcher.appendReplacement(stringBuffer2, "");
                NavArgument navArgument = (NavArgument) navDestination.getArguments().get(group);
                NavType navType = navArgument != null ? navArgument.type : null;
                IntNavType intNavType = NavType.ReferenceType;
                if (Intrinsics.areEqual(navType, intNavType)) {
                    bundle.getClass();
                    valueOf = context.getString(((Integer) intNavType.get(group, bundle)).intValue());
                } else {
                    navType.getClass();
                    bundle.getClass();
                    valueOf = String.valueOf(navType.get(group, bundle));
                }
                valueOf.getClass();
                stringBuffer2.append(valueOf);
            }
            matcher.appendTail(stringBuffer2);
            stringBuffer = stringBuffer2.toString();
        }
        if (stringBuffer != null) {
            BaseActivity baseActivity = this.activity;
            ActionBar supportActionBar = baseActivity.getSupportActionBar();
            if (supportActionBar == null) {
                UriKt$$ExternalSyntheticBUOutline0.m(baseActivity, " does not have an ActionBar set via setSupportActionBar()", "Activity ");
                return;
            }
            supportActionBar.setTitle(stringBuffer);
        }
        Fragment.AnonymousClass7 anonymousClass7 = this.configuration;
        anonymousClass7.getClass();
        int i = NavDestination.$r8$clinit;
        for (NavDestination navDestination2 : OperationKt.getHierarchy(navDestination)) {
            if (((HashSet) anonymousClass7.this$0).contains(Integer.valueOf(navDestination2.impl.id))) {
                if (navDestination2 instanceof NavGraph) {
                    int i2 = navDestination.impl.id;
                    int i3 = NavGraph.$r8$clinit;
                    if (i2 == IntOffsetKt.findStartDestination((NavGraph) navDestination2).impl.id) {
                    }
                }
                z = true;
                break;
            }
        }
        z = false;
        if (drawerLayout == null && z) {
            setNavigationIcon(null, 0);
            return;
        }
        boolean z2 = drawerLayout != null && z;
        DrawerArrowDrawable drawerArrowDrawable = this.arrowDrawable;
        if (drawerArrowDrawable != null) {
            pair = new Pair(drawerArrowDrawable, Boolean.TRUE);
        } else {
            DrawerArrowDrawable drawerArrowDrawable2 = new DrawerArrowDrawable(context);
            this.arrowDrawable = drawerArrowDrawable2;
            pair = new Pair(drawerArrowDrawable2, Boolean.FALSE);
        }
        DrawerArrowDrawable drawerArrowDrawable3 = (DrawerArrowDrawable) pair.first;
        boolean booleanValue = ((Boolean) pair.second).booleanValue();
        setNavigationIcon(drawerArrowDrawable3, z2 ? R.string.nav_app_bar_open_drawer_description : R.string.nav_app_bar_navigate_up_description);
        float f = z2 ? 0.0f : 1.0f;
        if (!booleanValue) {
            drawerArrowDrawable3.setProgress(f);
            return;
        }
        float f2 = drawerArrowDrawable3.mProgress;
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(drawerArrowDrawable3, "progress", f2, f);
        this.animator = ofFloat;
        ofFloat.getClass();
        ofFloat.start();
    }

    public final void setNavigationIcon(DrawerArrowDrawable drawerArrowDrawable, int i) {
        BaseActivity baseActivity = this.activity;
        ActionBar supportActionBar = baseActivity.getSupportActionBar();
        if (supportActionBar == null) {
            UriKt$$ExternalSyntheticBUOutline0.m(baseActivity, " does not have an ActionBar set via setSupportActionBar()", "Activity ");
            return;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(drawerArrowDrawable != null);
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) baseActivity.getDelegate();
        appCompatDelegateImpl.getClass();
        appCompatDelegateImpl.initWindowDecorActionBar();
        ActionBar actionBar = appCompatDelegateImpl.mActionBar;
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawerArrowDrawable);
            actionBar.setHomeActionContentDescription(i);
        }
    }
}
