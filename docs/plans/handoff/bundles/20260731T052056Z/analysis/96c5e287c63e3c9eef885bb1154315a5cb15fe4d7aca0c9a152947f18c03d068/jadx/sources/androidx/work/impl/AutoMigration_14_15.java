package androidx.work.impl;

import android.content.ContentValues;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.PlatformTypefaces;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.ScrollFeedbackProviderCompat;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteStatement;
import coil3.util.UtilsKt;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.CompositeDateValidator;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.internal.ObjectConstructor;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class AutoMigration_14_15 implements MenuPresenter.Callback, CoroutineContext.Key, PlatformTypefaces, NestedScrollConnection, ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl, Internal.EnumLiteMap, CreationExtras.Key, ProfileInstaller$DiagnosticsCallback, AutoMigrationSpec, BaseKeyframeAnimation.KeyframesWrapper, CompositeDateValidator.Operator, ObjectConstructor, Internal.EnumLiteMap {
    public static AutoMigration_14_15 DEFAULT;
    public final /* synthetic */ int $r8$classId;

    public AutoMigration_14_15(LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1) {
        this.$r8$classId = 4;
    }

    public static RectF calculateIndicatorWidthForTab(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.tabIndicatorFullWidth || !(view instanceof TabLayout.TabView)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        TabLayout.TabView tabView = (TabLayout.TabView) view;
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int dpToPx = (int) ViewUtils.dpToPx(tabView.getContext(), 24);
        if (contentWidth < dpToPx) {
            contentWidth = dpToPx;
        }
        int right = (tabView.getRight() + tabView.getLeft()) / 2;
        int bottom = (tabView.getBottom() + tabView.getTop()) / 2;
        int i = contentWidth / 2;
        return new RectF(right - i, bottom - (contentHeight / 2), i + right, (right / 2) + bottom);
    }

    /* renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg, reason: not valid java name */
    public static Typeface m771createAndroidTypefaceUsingTypefaceStyleRetOiIg(String str, FontWeight fontWeight, int i) {
        if (i == 0 && Intrinsics.areEqual(fontWeight, FontWeight.Normal) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        int m700getAndroidTypefaceStyleFO1MlWM = DpKt.m700getAndroidTypefaceStyleFO1MlWM(fontWeight, i);
        return (str == null || str.length() == 0) ? Typeface.defaultFromStyle(m700getAndroidTypefaceStyleFO1MlWM) : Typeface.create(str, m700getAndroidTypefaceStyleFO1MlWM);
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.$r8$classId) {
            case 25:
                return new ArrayDeque();
            case 26:
                return new ConcurrentHashMap();
            default:
                return new LinkedTreeMap(true);
        }
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createDefault-FO1MlWM */
    public Typeface mo651createDefaultFO1MlWM(FontWeight fontWeight, int i) {
        return m771createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createNamed-RetOiIg */
    public Typeface mo652createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
        String str = genericFontFamily.name;
        int i2 = fontWeight.weight / 100;
        if (i2 >= 0 && i2 < 2) {
            str = str.concat("-thin");
        } else if (2 <= i2 && i2 < 4) {
            str = str.concat("-light");
        } else if (i2 != 4) {
            if (i2 == 5) {
                str = str.concat("-medium");
            } else if ((6 > i2 || i2 >= 8) && 8 <= i2 && i2 < 11) {
                str = str.concat("-black");
            }
        }
        Typeface typeface = null;
        if (str.length() != 0) {
            Typeface m771createAndroidTypefaceUsingTypefaceStyleRetOiIg = m771createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i);
            if (!Intrinsics.areEqual(m771createAndroidTypefaceUsingTypefaceStyleRetOiIg, Typeface.create(Typeface.DEFAULT, DpKt.m700getAndroidTypefaceStyleFO1MlWM(fontWeight, i))) && !Intrinsics.areEqual(m771createAndroidTypefaceUsingTypefaceStyleRetOiIg, m771createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i))) {
                typeface = m771createAndroidTypefaceUsingTypefaceStyleRetOiIg;
            }
        }
        return typeface == null ? m771createAndroidTypefaceUsingTypefaceStyleRetOiIg(genericFontFamily.name, fontWeight, i) : typeface;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
    public Keyframe getCurrentKeyframe() {
        throw new IllegalStateException("not implemented");
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
    public float getEndProgress() {
        return 1.0f;
    }

    @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
    public int getId() {
        return 1;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
    public float getStartDelayProgress() {
        return RecyclerView.DECELERATION_RATE;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
    public boolean isCachedValueEnabled(float f) {
        throw new IllegalStateException("not implemented");
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
    public boolean isEmpty() {
        return true;
    }

    @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
    public boolean isValid(long j, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
            if (dateValidator != null && dateValidator.isValid(j)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
    public boolean isValueChanged(float f) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return false;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public Object mo2onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        return new Velocity(0L);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Empty values");
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
                compileStatement.bindLong(((Number) obj).longValue(), i);
            } else if (obj instanceof Integer) {
                compileStatement.bindLong(((Number) obj).intValue(), i);
            } else if (obj instanceof Short) {
                compileStatement.bindLong(((Number) obj).shortValue(), i);
            } else if (obj instanceof Byte) {
                compileStatement.bindLong(((Number) obj).byteValue(), i);
            } else if (obj instanceof String) {
                compileStatement.bindString(i, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                compileStatement.bindLong(((Boolean) obj).booleanValue() ? 1L : 0L, i);
            }
        }
        compileStatement.delegate.executeUpdateDelete();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public /* synthetic */ long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public Object mo4onPreFlingQWom1Mo(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public /* synthetic */ long mo5onPreScrollOzD1aCk(long j, int i) {
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0081 -> B:13:0x0064). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0084 -> B:13:0x0064). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object runMigrations(java.util.List r6, androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L41
            if (r1 == r4) goto L39
            if (r1 != r3) goto L33
            java.util.Iterator r6 = r0.L$1
            java.io.Serializable r7 = r0.L$0
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref$ObjectRef) r7
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L31
            goto L64
        L31:
            r5 = move-exception
            goto L7d
        L33:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r2
        L39:
            java.io.Serializable r6 = r0.L$0
            java.util.List r6 = (java.util.List) r6
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5a
        L41:
            kotlin.ResultKt.throwOnFailure(r5)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            coil3.RealImageLoader$execute$result$1 r1 = new coil3.RealImageLoader$execute$result$1
            r1.<init>(r6, r5, r2)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r7.updateData(r1, r0)
            if (r6 != r8) goto L59
            goto L7c
        L59:
            r6 = r5
        L5a:
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            java.util.Iterator r6 = r6.iterator()
            r7 = r5
        L64:
            boolean r5 = r6.hasNext()
            if (r5 == 0) goto L8a
            java.lang.Object r5 = r6.next()
            kotlin.jvm.functions.Function1 r5 = (kotlin.jvm.functions.Function1) r5
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L31
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L31
            r0.label = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r5 = r5.invoke(r0)     // Catch: java.lang.Throwable -> L31
            if (r5 != r8) goto L64
        L7c:
            return r8
        L7d:
            java.lang.Object r1 = r7.element
            if (r1 != 0) goto L84
            r7.element = r5
            goto L64
        L84:
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            kotlin.ExceptionsKt.addSuppressed(r1, r5)
            goto L64
        L8a:
            java.lang.Object r5 = r7.element
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            if (r5 != 0) goto L93
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L93:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.AutoMigration_14_15.runMigrations(java.util.List, androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 3:
                return "CompositionErrorContext";
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                int hashCode = hashCode();
                UtilsKt.checkRadix(16);
                String num = Integer.toString(hashCode, 16);
                num.getClass();
                return Modifier.CC.m("CreationExtras.Key@", num, "<", Reflection.factory.getOrCreateKotlinClass(ViewModelStoreOwner.class).getSimpleName(), ">");
            case 15:
                int hashCode2 = hashCode();
                UtilsKt.checkRadix(16);
                String num2 = Integer.toString(hashCode2, 16);
                num2.getClass();
                return Modifier.CC.m("CreationExtras.Key@", num2, "<", Reflection.factory.getOrCreateKotlinClass(String.class).getSimpleName(), ">");
            default:
                return super.toString();
        }
    }

    public void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF calculateIndicatorWidthForTab = calculateIndicatorWidthForTab(tabLayout, view);
        RectF calculateIndicatorWidthForTab2 = calculateIndicatorWidthForTab(tabLayout, view2);
        drawable.setBounds(AnimationUtils.lerp((int) calculateIndicatorWidthForTab.left, f, (int) calculateIndicatorWidthForTab2.left), drawable.getBounds().top, AnimationUtils.lerp((int) calculateIndicatorWidthForTab.right, f, (int) calculateIndicatorWidthForTab2.right), drawable.getBounds().bottom);
    }

    public /* synthetic */ AutoMigration_14_15(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i, Object obj) {
    }

    @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
    public void onScrollLimit(int i, int i2, int i3, boolean z) {
    }

    @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
    public void onScrollProgress(int i, int i2, int i3, int i4) {
    }
}
