package com.fsck.k9.ui.managefolders;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavHostController;
import androidx.navigation.NavInflater;
import androidx.navigation.fragment.NavHostFragment;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import java.util.HashSet;
import kotlin.Pair;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ManageFoldersActivity extends BaseActivity {
    public NavHostController navController;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.activity_manage_folders);
        setTitle(R.string.folders_action);
        String stringExtra = getIntent().getStringExtra("account");
        if (stringExtra == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing Intent extra 'account'");
            return;
        }
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        findFragmentById.getClass();
        this.navController = ((NavHostFragment) findFragmentById).getNavHostController$navigation_fragment_release();
        Bundle bundleOf = Util.bundleOf(new Pair("account", stringExtra));
        NavHostController navHostController = this.navController;
        if (navHostController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            throw null;
        }
        navHostController.impl.setGraph$navigation_runtime_release(((NavInflater) navHostController.navInflater$delegate.getValue()).inflate(R.navigation.navigation_manage_folders), bundleOf);
        HashSet hashSet = new HashSet();
        hashSet.addAll(EmptySet.INSTANCE);
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7(hashSet);
        NavHostController navHostController2 = this.navController;
        if (navHostController2 != null) {
            Operation$State.setupActionBarWithNavController(this, navHostController2, anonymousClass7);
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
