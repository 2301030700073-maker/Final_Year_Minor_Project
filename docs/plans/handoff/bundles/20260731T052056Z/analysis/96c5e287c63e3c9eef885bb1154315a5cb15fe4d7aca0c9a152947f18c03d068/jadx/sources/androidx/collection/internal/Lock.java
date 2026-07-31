package androidx.collection.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleDelegate;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavContext;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.room.Room;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import coil3.util.UtilsKt;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.CompositeDateValidator;
import com.google.android.material.internal.CheckableGroup;
import com.google.gson.internal.ObjectConstructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import kotlin.Pair;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import okio.PriorityQueue;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Lock implements PlatformLocaleDelegate, Internal.EnumLiteMap, CreationExtras.Key, Preference.SummaryProvider, ProfileInstaller$DiagnosticsCallback, StableIdStorage.StableIdLookup, CoroutineContext.Key, SupportSQLiteOpenHelper.Factory, AutoMigrationSpec, CompositeDateValidator.Operator, ObjectConstructor, Internal.EnumLiteMap {
    public static Lock sSimpleSummaryProvider;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Lock(int i) {
        this.$r8$classId = i;
    }

    public static NavBackStackEntry create$default(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle$State lifecycle$State, NavControllerViewModel navControllerViewModel) {
        String uuid = UUID.randomUUID().toString();
        uuid.getClass();
        navDestination.getClass();
        lifecycle$State.getClass();
        return new NavBackStackEntry(navContext, navDestination, bundle, lifecycle$State, navControllerViewModel, uuid, null);
    }

    /* renamed from: linearGradient-mHitzGk, reason: not valid java name */
    public static LinearGradient m11linearGradientmHitzGk(Pair[] pairArr, long j, long j2) {
        ArrayList arrayList = new ArrayList(pairArr.length);
        for (Pair pair : pairArr) {
            Color color = (Color) pair.second;
            long j3 = color.value;
            arrayList.add(color);
        }
        ArrayList arrayList2 = new ArrayList(pairArr.length);
        for (Pair pair2 : pairArr) {
            arrayList2.add(Float.valueOf(((Number) pair2.first).floatValue()));
        }
        return new LinearGradient(arrayList, arrayList2, j, j2);
    }

    /* renamed from: linearGradient-mHitzGk$default, reason: not valid java name */
    public static LinearGradient m12linearGradientmHitzGk$default(Pair[] pairArr, long j, long j2, int i) {
        if ((i & 2) != 0) {
            j = 0;
        }
        if ((i & 4) != 0) {
            j2 = 9187343241974906880L;
        }
        return m11linearGradientmHitzGk(pairArr, j, j2);
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.$r8$classId) {
            case 24:
                return new TreeSet();
            case 25:
                return new ArrayList();
            default:
                return new TreeMap();
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(CheckableGroup checkableGroup) {
        return new FrameworkSQLiteOpenHelper((Context) checkableGroup.checkables, (String) checkableGroup.checkedIds, (PriorityQueue) checkableGroup.onCheckedStateChangeListener, checkableGroup.singleSelection, checkableGroup.selectionRequired);
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public LocaleList getCurrent() {
        return new LocaleList(Room.listOf(new Locale(java.util.Locale.getDefault())));
    }

    @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
    public int getId() {
        return 2;
    }

    @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
    public boolean isValid(long j, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
            if (dateValidator != null && !dateValidator.isValid(j)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
    public long localToGlobal(long j) {
        return -1L;
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // androidx.room.migration.AutoMigrationSpec
    public void onPostMigrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        frameworkSQLiteDatabase.getClass();
        frameworkSQLiteDatabase.execSQL("UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0");
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
    }

    @Override // androidx.preference.Preference.SummaryProvider
    public CharSequence provideSummary(Preference preference) {
        EditTextPreference editTextPreference = (EditTextPreference) preference;
        return TextUtils.isEmpty(editTextPreference.mText) ? editTextPreference.mContext.getString(R.string.not_set) : editTextPreference.mText;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case IMAGE_VALUE:
                int hashCode = hashCode();
                UtilsKt.checkRadix(16);
                String num = Integer.toString(hashCode, 16);
                num.getClass();
                return Modifier.CC.m("CreationExtras.Key@", num, "<", Reflection.factory.getOrCreateKotlinClass(Bundle.class).getSimpleName(), ">");
            default:
                return super.toString();
        }
    }

    /* renamed from: verticalGradient-8A-3gB4$default, reason: not valid java name */
    public static LinearGradient m13verticalGradient8A3gB4$default(List list) {
        return new LinearGradient(list, null, (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(Float.POSITIVE_INFINITY) & 4294967295L));
    }
}
