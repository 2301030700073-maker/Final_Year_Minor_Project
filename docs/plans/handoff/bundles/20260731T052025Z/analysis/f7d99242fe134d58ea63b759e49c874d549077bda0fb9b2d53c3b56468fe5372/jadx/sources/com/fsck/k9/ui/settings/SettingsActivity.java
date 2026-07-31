package com.fsck.k9.ui.settings;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavHostController;
import androidx.navigation.fragment.NavHostFragment;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import java.util.HashSet;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsActivity extends BaseActivity {
    public NavHostController navController;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.activity_settings);
        HashSet hashSet = new HashSet();
        hashSet.addAll(EmptySet.INSTANCE);
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7(hashSet);
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        findFragmentById.getClass();
        NavHostController navHostController$navigation_fragment_release = ((NavHostFragment) findFragmentById).getNavHostController$navigation_fragment_release();
        this.navController = navHostController$navigation_fragment_release;
        if (navHostController$navigation_fragment_release != null) {
            Operation$State.setupActionBarWithNavController(this, navHostController$navigation_fragment_release, anonymousClass7);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            throw null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        NavHostController navHostController = this.navController;
        if (navHostController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            throw null;
        }
        if (navHostController.navigateUp() || super.onSupportNavigateUp()) {
            return true;
        }
        finish();
        return true;
    }
}
