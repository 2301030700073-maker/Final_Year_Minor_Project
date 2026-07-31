package io.noties.markwon;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleDelegate;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.room.migration.AutoMigrationSpec;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteStatement;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.material.internal.CheckableGroup;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import j$.time.OffsetDateTime;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.PriorityQueue;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.feed.FeedViewModel;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.feed.service.FeedEventManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BlockHandlerDef implements PlatformLocaleDelegate, Preference.SummaryProvider, ProfileInstaller$DiagnosticsCallback, CoroutineContext.Key, SupportSQLiteQuery, SupportSQLiteOpenHelper.Factory, AutoMigrationSpec, Function, Consumer {
    public static BlockHandlerDef DEFAULT;
    public static BlockHandlerDef sSimpleSummaryProvider;
    public final /* synthetic */ int $r8$classId;

    public BlockHandlerDef() {
        this.$r8$classId = 5;
        new LruCache(16);
        long[] jArr = ScatterMapKt.EmptyGroup;
        new MutableScatterMap();
    }

    public static final float access$lookupAndInterpolate(float f, float[] fArr, float[] fArr2) {
        float f2;
        float f3;
        float f4;
        float f5;
        float abs = Math.abs(f);
        float signum = Math.signum(f);
        int binarySearch = Arrays.binarySearch(fArr, abs);
        if (binarySearch >= 0) {
            return signum * fArr2[binarySearch];
        }
        int i = -(binarySearch + 1);
        int i2 = i - 1;
        if (i2 >= fArr.length - 1) {
            float f6 = fArr[fArr.length - 1];
            float f7 = fArr2[fArr.length - 1];
            if (f6 == 0.0f) {
                return 0.0f;
            }
            return (f7 / f6) * f;
        }
        if (i2 == -1) {
            float f8 = fArr[0];
            f4 = fArr2[0];
            f5 = f8;
            f3 = 0.0f;
            f2 = 0.0f;
        } else {
            float f9 = fArr[i2];
            float f10 = fArr[i];
            f2 = fArr2[i2];
            f3 = f9;
            f4 = fArr2[i];
            f5 = f10;
        }
        return (((f4 - f2) * Math.max(0.0f, Math.min(1.0f, f3 == f5 ? 0.0f : (abs - f3) / (f5 - f3)))) + f2) * signum;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        Object[] objArr = (Object[]) obj;
        if (objArr.length != 6) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m(objArr.length, "Array of size 6 expected but got ");
            return null;
        }
        Object obj2 = objArr[0];
        Object obj3 = objArr[1];
        Object obj4 = objArr[2];
        Object obj5 = objArr[3];
        Object obj6 = objArr[4];
        Object obj7 = objArr[5];
        FeedEventManager.Event event = (FeedEventManager.Event) obj2;
        boolean booleanValue = ((Boolean) obj3).booleanValue();
        boolean booleanValue2 = ((Boolean) obj4).booleanValue();
        boolean booleanValue3 = ((Boolean) obj5).booleanValue();
        long longValue = ((Long) obj6).longValue();
        List list = (List) obj7;
        event.getClass();
        list.getClass();
        return new FeedViewModel.CombineResultEventHolder(event, booleanValue, booleanValue2, booleanValue3, longValue, (OffsetDateTime) CollectionsKt.firstOrNull(list));
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(CheckableGroup checkableGroup) {
        return new FrameworkSQLiteOpenHelper((Context) checkableGroup.checkables, (String) checkableGroup.checkedIds, (PriorityQueue) checkableGroup.onCheckedStateChangeListener, checkableGroup.singleSelection, checkableGroup.selectionRequired);
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public LocaleList getCurrent() {
        return new LocaleList(Jsoup.listOf(new Locale(java.util.Locale.getDefault())));
    }

    public Signature[] getSigningSignatures(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return "pragma wal_checkpoint(full)";
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // androidx.room.migration.AutoMigrationSpec
    public void onPostMigrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        frameworkSQLiteDatabase.getClass();
        frameworkSQLiteDatabase.execSQL("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("last_enqueue_time", Long.valueOf(System.currentTimeMillis()));
        int i = 0;
        Object[] objArr = new Object[0];
        if (contentValues.size() == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Empty values");
            return;
        }
        int size = contentValues.size();
        int length = objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(FrameworkSQLiteDatabase.CONFLICT_VALUES[3]);
        sb.append("WorkSpec SET ");
        int i2 = 0;
        for (String str : contentValues.keySet()) {
            sb.append(i2 > 0 ? "," : "");
            sb.append(str);
            objArr2[i2] = contentValues.get(str);
            sb.append("=?");
            i2++;
        }
        for (int i3 = size; i3 < length; i3++) {
            objArr2[i3] = objArr[i3 - size];
        }
        if (!TextUtils.isEmpty("last_enqueue_time = 0 AND interval_duration <> 0 ")) {
            sb.append(" WHERE last_enqueue_time = 0 AND interval_duration <> 0 ");
        }
        FrameworkSQLiteStatement compileStatement = frameworkSQLiteDatabase.compileStatement(sb.toString());
        int length2 = objArr2.length;
        while (i < length2) {
            Object obj = objArr2[i];
            i++;
            if (obj == null) {
                compileStatement.bindNull(i);
            } else if (obj instanceof byte[]) {
                compileStatement.bindBlob(i, (byte[]) obj);
            } else if (obj instanceof Float) {
                compileStatement.bindDouble(((Number) obj).floatValue(), i);
            } else if (obj instanceof Double) {
                compileStatement.bindDouble(((Number) obj).doubleValue(), i);
            } else if (obj instanceof Long) {
                compileStatement.bindLong(i, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                compileStatement.bindLong(i, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                compileStatement.bindLong(i, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                compileStatement.bindLong(i, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                compileStatement.bindString(i, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                compileStatement.bindLong(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
        compileStatement.delegate.executeUpdateDelete();
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
        CharSequence[] charSequenceArr;
        CharSequence[] charSequenceArr2;
        ListPreference listPreference = (ListPreference) preference;
        int findIndexOfValue = listPreference.findIndexOfValue(listPreference.mValue);
        if (TextUtils.isEmpty((findIndexOfValue < 0 || (charSequenceArr2 = listPreference.mEntries) == null) ? null : charSequenceArr2[findIndexOfValue])) {
            return listPreference.mContext.getString(R.string.not_set);
        }
        int findIndexOfValue2 = listPreference.findIndexOfValue(listPreference.mValue);
        if (findIndexOfValue2 < 0 || (charSequenceArr = listPreference.mEntries) == null) {
            return null;
        }
        return charSequenceArr[findIndexOfValue2];
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 14:
                int hashCode = hashCode();
                CharsKt.checkRadix(16);
                String num = Integer.toString(hashCode, 16);
                num.getClass();
                return Owner.CC.m("CreationExtras.Key@", num, "<", Reflection.getOrCreateKotlinClass(SavedStateRegistryOwner.class).getSimpleName(), ">");
            case 15:
                int hashCode2 = hashCode();
                CharsKt.checkRadix(16);
                String num2 = Integer.toString(hashCode2, 16);
                num2.getClass();
                return Owner.CC.m("CreationExtras.Key@", num2, "<", Reflection.getOrCreateKotlinClass(Bundle.class).getSimpleName(), ">");
            case 16:
                int hashCode3 = hashCode();
                CharsKt.checkRadix(16);
                String num3 = Integer.toString(hashCode3, 16);
                num3.getClass();
                return Owner.CC.m("CreationExtras.Key@", num3, "<", Reflection.getOrCreateKotlinClass(String.class).getSimpleName(), ">");
            case 29:
                return "EmptyConsumer";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ BlockHandlerDef(int i) {
        this.$r8$classId = i;
    }

    public BlockHandlerDef(FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0) {
        this.$r8$classId = 28;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
    }
}
