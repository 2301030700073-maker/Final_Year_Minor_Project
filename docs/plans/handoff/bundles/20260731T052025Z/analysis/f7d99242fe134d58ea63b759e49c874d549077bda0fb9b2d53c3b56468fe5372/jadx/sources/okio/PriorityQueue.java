package okio;

import android.R;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuDialogHelper;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraPipe$CameraInteropConfig;
import androidx.camera.camera2.pipe.CameraPipe$Config;
import androidx.camera.camera2.pipe.CameraPipe$ThreadConfig;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.AndroidDevicePolicyManagerWrapper;
import androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl;
import androidx.camera.camera2.pipe.compat.Camera2ErrorProcessor;
import androidx.camera.camera2.pipe.compat.Camera2MetadataCache;
import androidx.camera.camera2.pipe.compat.Camera2MetadataProvider;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.ConcurrentSessionSequencers;
import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl;
import androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$provideCameraContext$1;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent$CameraPipeComponentImpl;
import androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.core.AndroidThreads;
import androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.featurecombinationquery.Camera2CameraDeviceSetupCompatProvider;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.RoomConnectionManager;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.file.FileResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.zxing.PlanarYUVLuminanceSource;
import dagger.internal.Provider;
import de.cketti.changelog.XmlParser;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import kotlin.DeepRecursiveScopeImpl;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.math.MathKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.internal.ArrayPoolsKt;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PriorityQueue implements Provider, ResourceTranscoder, AccessibilityViewCommand {
    public final /* synthetic */ int $r8$classId;
    public Object array;
    public int size;

    public PriorityQueue(Context context, int i) {
        this.$r8$classId = 1;
        this.array = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
        this.size = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$readObject(okio.PriorityQueue r10, kotlin.DeepRecursiveScopeImpl r11, kotlin.coroutines.jvm.internal.BaseContinuationImpl r12) {
        /*
            java.lang.Object r0 = r10.array
            androidx.compose.ui.node.RulerTrackingMap r0 = (androidx.compose.ui.node.RulerTrackingMap) r0
            boolean r1 = r12 instanceof kotlinx.serialization.json.internal.JsonTreeReader$readObject$2
            if (r1 == 0) goto L17
            r1 = r12
            kotlinx.serialization.json.internal.JsonTreeReader$readObject$2 r1 = (kotlinx.serialization.json.internal.JsonTreeReader$readObject$2) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.label = r2
            goto L1c
        L17:
            kotlinx.serialization.json.internal.JsonTreeReader$readObject$2 r1 = new kotlinx.serialization.json.internal.JsonTreeReader$readObject$2
            r1.<init>(r10, r12)
        L1c:
            java.lang.Object r12 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 6
            r5 = 0
            r6 = 7
            r7 = 4
            r8 = 1
            if (r2 == 0) goto L5c
            if (r2 != r8) goto L56
            int r10 = r1.I$0
            java.lang.String r11 = r1.L$3
            java.util.LinkedHashMap r0 = r1.L$2
            okio.PriorityQueue r2 = r1.L$1
            kotlin.DeepRecursiveScopeImpl r9 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.serialization.json.JsonElement r12 = (kotlinx.serialization.json.JsonElement) r12
            r0.put(r11, r12)
            java.lang.Object r11 = r2.array
            androidx.compose.ui.node.RulerTrackingMap r11 = (androidx.compose.ui.node.RulerTrackingMap) r11
            byte r11 = r11.consumeNextToken()
            if (r11 == r7) goto L53
            if (r11 != r6) goto L49
            goto L97
        L49:
            java.lang.Object r10 = r2.array
            androidx.compose.ui.node.RulerTrackingMap r10 = (androidx.compose.ui.node.RulerTrackingMap) r10
            java.lang.String r11 = "Expected end of the object or comma"
            androidx.compose.ui.node.RulerTrackingMap.fail$default(r10, r11, r5, r3, r4)
            throw r3
        L53:
            r5 = r10
            r10 = r2
            goto L70
        L56:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r3
        L5c:
            kotlin.ResultKt.throwOnFailure(r12)
            byte r12 = r0.consumeNextToken(r4)
            byte r2 = r0.peekNextToken()
            if (r2 == r7) goto Laf
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            r9 = r11
            r11 = r12
        L70:
            java.lang.Object r12 = r10.array
            androidx.compose.ui.node.RulerTrackingMap r12 = (androidx.compose.ui.node.RulerTrackingMap) r12
            boolean r2 = r12.canConsumeValue()
            if (r2 == 0) goto L96
            java.lang.String r11 = r12.consumeString()
            r2 = 5
            r12.consumeNextToken(r2)
            r1.L$0 = r9
            r1.L$1 = r10
            r1.L$2 = r0
            r1.L$3 = r11
            r1.I$0 = r5
            r1.label = r8
            r9.getClass()
            r9.cont = r1
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            return r10
        L96:
            r2 = r10
        L97:
            java.lang.Object r10 = r2.array
            androidx.compose.ui.node.RulerTrackingMap r10 = (androidx.compose.ui.node.RulerTrackingMap) r10
            if (r11 != r4) goto La1
            r10.consumeNextToken(r6)
            goto La3
        La1:
            if (r11 == r7) goto La9
        La3:
            kotlinx.serialization.json.JsonObject r10 = new kotlinx.serialization.json.JsonObject
            r10.<init>(r0)
            return r10
        La9:
            java.lang.String r11 = "object"
            kotlinx.serialization.json.internal.WriteModeKt.invalidTrailingComma(r10, r11)
            throw r3
        Laf:
            java.lang.String r10 = "Unexpected leading comma"
            androidx.compose.ui.node.RulerTrackingMap.fail$default(r0, r10, r5, r3, r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.PriorityQueue.access$readObject(okio.PriorityQueue, kotlin.DeepRecursiveScopeImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static void deleteDatabaseFile(String str) {
        if (str.equalsIgnoreCase(":memory:")) {
            return;
        }
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        if (str.subSequence(i, length + 1).toString().length() == 0) {
            return;
        }
        Log.w("SupportSQLite", "deleting the database file: ".concat(str));
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception e) {
            Log.w("SupportSQLite", "delete failed: ", e);
        }
    }

    public void add(String str) {
        String[] strArr = (String[]) this.array;
        if (strArr == null) {
            String[] strArr2 = new String[4];
            for (int i = 0; i < 4; i++) {
                strArr2[i] = "";
            }
            this.array = strArr2;
        } else if (this.size + 1 == strArr.length) {
            int length = strArr.length * 2;
            String[] strArr3 = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                strArr3[i2] = "";
            }
            String[] strArr4 = (String[]) this.array;
            if (strArr4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("segments");
                throw null;
            }
            ArraysKt___ArraysKt.copyInto$default(strArr4, strArr3, 0, 0, 14);
            this.array = strArr3;
        }
        String[] strArr5 = (String[]) this.array;
        if (strArr5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("segments");
            throw null;
        }
        int i3 = this.size;
        this.size = i3 + 1;
        strArr5[i3] = str;
    }

    public boolean contains(long j) {
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (((long[]) this.array)[i2] == j) {
                return true;
            }
        }
        return false;
    }

    public AlertDialog create() {
        ListAdapter listAdapter;
        final AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        ContextThemeWrapper contextThemeWrapper = alertParams.mContext;
        final ContextThemeWrapper contextThemeWrapper2 = alertParams.mContext;
        AlertDialog alertDialog = new AlertDialog(contextThemeWrapper, this.size);
        View view = alertParams.mCustomTitleView;
        final AlertController alertController = alertDialog.mAlert;
        if (view != null) {
            alertController.mCustomTitleView = view;
        } else {
            CharSequence charSequence = alertParams.mTitle;
            if (charSequence != null) {
                alertController.mTitle = charSequence;
                TextView textView = alertController.mTitleView;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = alertParams.mIcon;
            if (drawable != null) {
                alertController.mIcon = drawable;
                ImageView imageView = alertController.mIconView;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    alertController.mIconView.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = alertParams.mMessage;
        if (charSequence2 != null) {
            alertController.mMessage = charSequence2;
            TextView textView2 = alertController.mMessageView;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = alertParams.mPositiveButtonText;
        if (charSequence3 != null) {
            alertController.setButton(-1, charSequence3, alertParams.mPositiveButtonListener);
        }
        CharSequence charSequence4 = alertParams.mNegativeButtonText;
        if (charSequence4 != null) {
            alertController.setButton(-2, charSequence4, alertParams.mNegativeButtonListener);
        }
        String str = alertParams.mNeutralButtonText;
        if (str != null) {
            alertController.setButton(-3, str, alertParams.mNeutralButtonListener);
        }
        if (alertParams.mItems != null || alertParams.mAdapter != null) {
            final AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
            if (alertParams.mIsMultiChoice) {
                final int i = alertController.mMultiChoiceItemLayout;
                final CharSequence[] charSequenceArr = alertParams.mItems;
                listAdapter = new ArrayAdapter(contextThemeWrapper2, i, charSequenceArr) { // from class: androidx.appcompat.app.AlertController.AlertParams.1
                    public final /* synthetic */ RecycleListView val$listView;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(final ContextThemeWrapper contextThemeWrapper22, final int i2, final CharSequence[] charSequenceArr2, final RecycleListView recycleListView2) {
                        super(contextThemeWrapper22, i2, R.id.text1, charSequenceArr2);
                        r5 = recycleListView2;
                    }

                    @Override // android.widget.ArrayAdapter, android.widget.Adapter
                    public final View getView(int i2, View view2, ViewGroup viewGroup) {
                        View view3 = super.getView(i2, view2, viewGroup);
                        boolean[] zArr = AlertParams.this.mCheckedItems;
                        if (zArr != null && zArr[i2]) {
                            r5.setItemChecked(i2, true);
                        }
                        return view3;
                    }
                };
            } else {
                int i2 = alertParams.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                listAdapter = alertParams.mAdapter;
                if (listAdapter == null) {
                    listAdapter = new AlertController.CheckedItemAdapter(contextThemeWrapper22, i2, R.id.text1, alertParams.mItems);
                }
            }
            alertController.mAdapter = listAdapter;
            alertController.mCheckedItem = alertParams.mCheckedItem;
            if (alertParams.mOnClickListener != null) {
                recycleListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                    public final /* synthetic */ AlertController val$dialog;

                    public AnonymousClass3(final AlertController alertController2) {
                        r2 = alertController2;
                    }

                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                        AlertParams alertParams2 = AlertParams.this;
                        DialogInterface.OnClickListener onClickListener = alertParams2.mOnClickListener;
                        AlertController alertController2 = r2;
                        onClickListener.onClick(alertController2.mDialog, i3);
                        if (alertParams2.mIsSingleChoice) {
                            return;
                        }
                        alertController2.mDialog.dismiss();
                    }
                });
            } else if (alertParams.mOnCheckboxClickListener != null) {
                recycleListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.4
                    public final /* synthetic */ AlertController val$dialog;
                    public final /* synthetic */ RecycleListView val$listView;

                    public AnonymousClass4(final RecycleListView recycleListView2, final AlertController alertController2) {
                        r2 = recycleListView2;
                        r3 = alertController2;
                    }

                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                        AlertParams alertParams2 = AlertParams.this;
                        boolean[] zArr = alertParams2.mCheckedItems;
                        RecycleListView recycleListView2 = r2;
                        if (zArr != null) {
                            zArr[i3] = recycleListView2.isItemChecked(i3);
                        }
                        alertParams2.mOnCheckboxClickListener.onClick(r3.mDialog, i3, recycleListView2.isItemChecked(i3));
                    }
                });
            }
            if (alertParams.mIsSingleChoice) {
                recycleListView2.setChoiceMode(1);
            } else if (alertParams.mIsMultiChoice) {
                recycleListView2.setChoiceMode(2);
            }
            alertController2.mListView = recycleListView2;
        }
        View view2 = alertParams.mView;
        if (view2 != null) {
            alertController2.mView = view2;
            alertController2.mViewSpacingSpecified = false;
        }
        alertDialog.setCancelable(true);
        alertDialog.setCanceledOnTouchOutside(true);
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        MenuDialogHelper menuDialogHelper = alertParams.mOnKeyListener;
        if (menuDialogHelper != null) {
            alertDialog.setOnKeyListener(menuDialogHelper);
        }
        return alertDialog;
    }

    public void ensureTotalCapacity(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = (char[]) this.array;
        if (cArr.length <= i3) {
            int i4 = i * 2;
            if (i3 < i4) {
                i3 = i4;
            }
            this.array = Arrays.copyOf(cArr, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object, java.util.Map] */
    @Override // javax.inject.Provider
    public Object get() {
        LinkedHashMap linkedHashMap;
        String string;
        DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl = (DaggerCameraPipeComponent$CameraPipeComponentImpl) this.array;
        int i = this.size;
        int i2 = 1;
        int i3 = 0;
        Camera2CameraDeviceSetupCompatProvider camera2CameraDeviceSetupCompatProvider = null;
        switch (i) {
            case 0:
                return new CameraPipeLifetime((Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get());
            case 1:
                return JobKt.Job$default();
            case 2:
                return new CameraDevicesImpl((CameraBackendsImpl) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraBackendsProvider.get());
            case 3:
                CameraPipe$Config cameraPipe$Config = (CameraPipe$Config) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeConfigModule.mClientFragmentManager;
                PriorityQueue priorityQueue = daggerCameraPipeComponent$CameraPipeComponentImpl.camera2BackendProvider;
                Context cameraPipeContextContext = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext();
                Threads threads = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                CameraPipeLifetime cameraPipeLifetime = (CameraPipeLifetime) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeLifetimeProvider.get();
                priorityQueue.getClass();
                threads.getClass();
                cameraPipeLifetime.getClass();
                GlideExperiments glideExperiments = cameraPipe$Config.cameraBackendConfig;
                glideExperiments.getClass();
                Map map = glideExperiments.experiments;
                try {
                    Trace.beginSection("Initialize defaultCameraBackend");
                    CameraBackend cameraBackend = (CameraBackend) priorityQueue.get();
                    Trace.endSection();
                    String str = "CXCP-Camera2";
                    if (map.containsKey(new CameraBackendId(str))) {
                        UriKt$$ExternalSyntheticBUOutline0.m(CameraBackendId.m25toStringimpl("CXCP-Camera2"), ". Use CameraBackendConfig#internalBackend field instead.", "CameraBackendConfig#cameraBackends should not contain a backend with ");
                        return null;
                    }
                    CameraBackendId cameraBackendId = new CameraBackendId(str);
                    CameraPipeModule$Companion$$ExternalSyntheticLambda0 cameraPipeModule$Companion$$ExternalSyntheticLambda0 = new CameraPipeModule$Companion$$ExternalSyntheticLambda0(cameraBackend);
                    if (map.isEmpty()) {
                        ?? singletonMap = Collections.singletonMap(cameraBackendId, cameraPipeModule$Companion$$ExternalSyntheticLambda0);
                        singletonMap.getClass();
                        linkedHashMap = singletonMap;
                    } else {
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
                        linkedHashMap2.put(cameraBackendId, cameraPipeModule$Companion$$ExternalSyntheticLambda0);
                        linkedHashMap = linkedHashMap2;
                    }
                    if (linkedHashMap.containsKey(new CameraBackendId(str))) {
                        return new CameraBackendsImpl("CXCP-Camera2", linkedHashMap, cameraPipeContextContext, threads, cameraPipeLifetime);
                    }
                    StringBuilder sb = new StringBuilder("Failed to find ");
                    sb.append((Object) CameraBackendId.m25toStringimpl("CXCP-Camera2"));
                    ZslControlImpl$$ExternalSyntheticLambda1.m(sb, " in the list of available CameraPipe backends! Available values are ", linkedHashMap.keySet());
                    return null;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            case 4:
                return new Camera2Backend((Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get(), (Camera2DeviceCache) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2DeviceCacheProvider.get(), (Camera2MetadataCache) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2MetadataCacheProvider.get(), (PruningCamera2DeviceManager) daggerCameraPipeComponent$CameraPipeComponentImpl.pruningCamera2DeviceManagerProvider.get(), new BiometricPrompt(18, daggerCameraPipeComponent$CameraPipeComponentImpl), daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext());
            case 5:
                PlanarYUVLuminanceSource planarYUVLuminanceSource = daggerCameraPipeComponent$CameraPipeComponentImpl.threadConfigModule;
                CameraPipeLifetime cameraPipeLifetime2 = (CameraPipeLifetime) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeLifetimeProvider.get();
                Job job = (Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get();
                int i4 = planarYUVLuminanceSource.dataHeight;
                cameraPipeLifetime2.getClass();
                job.getClass();
                ArrayList arrayList = new ArrayList();
                ((CameraPipe$ThreadConfig) planarYUVLuminanceSource.yuvData).getClass();
                ThreadFactory threadFactory = AndroidThreads.factory;
                ScheduledExecutorService asScheduledThreadPool = AndroidThreads.asScheduledThreadPool(new AndroidThreads$$ExternalSyntheticLambda0(i4, AndroidThreads.withPrefix(threadFactory, "CXCP-IO-")), 8);
                arrayList.add(asScheduledThreadPool);
                CoroutineDispatcher from = JobKt.from(asScheduledThreadPool);
                ScheduledExecutorService asScheduledThreadPool2 = AndroidThreads.asScheduledThreadPool(new AndroidThreads$$ExternalSyntheticLambda0(i4, AndroidThreads.withPrefix(threadFactory, "CXCP-BG-")), planarYUVLuminanceSource.height);
                arrayList.add(asScheduledThreadPool2);
                CoroutineDispatcher from2 = JobKt.from(asScheduledThreadPool2);
                ScheduledExecutorService asScheduledThreadPool3 = AndroidThreads.asScheduledThreadPool(new AndroidThreads$$ExternalSyntheticLambda0(planarYUVLuminanceSource.dataWidth, AndroidThreads.withPrefix(threadFactory, "CXCP-")), planarYUVLuminanceSource.width);
                arrayList.add(asScheduledThreadPool3);
                CoroutineDispatcher from3 = JobKt.from(asScheduledThreadPool3);
                cameraPipeLifetime2.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new Preview$$ExternalSyntheticLambda0(5, arrayList));
                ThreadConfigModule$$ExternalSyntheticLambda1 threadConfigModule$$ExternalSyntheticLambda1 = new ThreadConfigModule$$ExternalSyntheticLambda1(planarYUVLuminanceSource, cameraPipeLifetime2, i3);
                ThreadConfigModule$$ExternalSyntheticLambda1 threadConfigModule$$ExternalSyntheticLambda12 = new ThreadConfigModule$$ExternalSyntheticLambda1(planarYUVLuminanceSource, cameraPipeLifetime2, i2);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                ref$ObjectRef.element = JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job), from3).plus(new CoroutineName("CXCP")));
                ref$ObjectRef2.element = JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job), new CoroutineName("CXCP-Dispatch")));
                cameraPipeLifetime2.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new CameraX$$ExternalSyntheticLambda2(8, ref$ObjectRef, ref$ObjectRef2));
                return new Threads((CoroutineScope) ref$ObjectRef.element, (CoroutineScope) ref$ObjectRef2.element, asScheduledThreadPool, from, asScheduledThreadPool2, from2, asScheduledThreadPool3, from3, threadConfigModule$$ExternalSyntheticLambda1, threadConfigModule$$ExternalSyntheticLambda12);
            case 6:
                return new Camera2DeviceCache(daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraManagerProvider, (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get(), daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext(), (PackageManager) daggerCameraPipeComponent$CameraPipeComponentImpl.providePackageManagerProvider.get(), (Camera2ErrorProcessor) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2ErrorProcessorProvider.get(), daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraDeviceSetupCompatFactoryProvider, (CameraPipeLifetime) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeLifetimeProvider.get(), (Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get());
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Object systemService = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext().getSystemService("camera");
                systemService.getClass();
                return (CameraManager) systemService;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                PackageManager packageManager = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext().getPackageManager();
                packageManager.getClass();
                return packageManager;
            case 9:
                return new Camera2ErrorProcessor();
            case 10:
                Context cameraPipeContextContext2 = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext();
                CameraDeviceSetupCompatFactory cameraDeviceSetupCompatFactory = new CameraDeviceSetupCompatFactory();
                if (Build.VERSION.SDK_INT >= 35) {
                    cameraDeviceSetupCompatFactory.mCamera2Provider = new Camera2CameraDeviceSetupCompatProvider(cameraPipeContextContext2);
                }
                try {
                    ServiceInfo[] serviceInfoArr = cameraPipeContextContext2.getPackageManager().getPackageInfo(cameraPipeContextContext2.getPackageName(), 132).services;
                    if (serviceInfoArr != null) {
                        String str2 = null;
                        for (ServiceInfo serviceInfo : serviceInfoArr) {
                            Bundle bundle = serviceInfo.metaData;
                            if (bundle != null && (string = bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY")) != null) {
                                if (str2 != null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Multiple Play Services CameraDeviceSetupCompat implementations found in the manifest.");
                                    return null;
                                }
                                str2 = string;
                            }
                        }
                        if (str2 != null) {
                            try {
                                camera2CameraDeviceSetupCompatProvider = (Camera2CameraDeviceSetupCompatProvider) Class.forName(str2).getConstructor(Context.class).newInstance(cameraPipeContextContext2);
                            } catch (Exception e) {
                                UriKt$$ExternalSyntheticBUOutline0.m("Failed to instantiate Play Services CameraDeviceSetupCompat implementation", e);
                                return null;
                            }
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
                cameraDeviceSetupCompatFactory.mPlayServicesProvider = camera2CameraDeviceSetupCompatProvider;
                return cameraDeviceSetupCompatFactory;
            case 11:
                Context cameraPipeContextContext3 = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext();
                Threads threads2 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                Permissions permissions = (Permissions) daggerCameraPipeComponent$CameraPipeComponentImpl.permissionsProvider.get();
                CardView.AnonymousClass1 anonymousClass1 = ((CameraPipe$Config) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeConfigModule.mClientFragmentManager).cameraMetadataConfig;
                MathKt.checkNotNullFromProvides(anonymousClass1);
                return new Camera2MetadataCache(cameraPipeContextContext3, threads2, permissions, anonymousClass1, (SystemTimeSource) daggerCameraPipeComponent$CameraPipeComponentImpl.systemTimeSourceProvider.get());
            case BasicTextKt.ShiftMeta /* 12 */:
                return new Permissions(daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext());
            case 13:
                return new SystemTimeSource();
            case 14:
                return new PruningCamera2DeviceManager((Permissions) daggerCameraPipeComponent$CameraPipeComponentImpl.permissionsProvider.get(), (RetryingCameraStateOpenerImpl) daggerCameraPipeComponent$CameraPipeComponentImpl.retryingCameraStateOpenerImplProvider.get(), (Camera2DeviceCloserImpl) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2DeviceCloserImplProvider.get(), (Camera2ErrorProcessor) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2ErrorProcessorProvider.get(), (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get());
            case OffsetKt.Horizontal /* 15 */:
                Provider provider = daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraManagerProvider;
                BiometricPrompt biometricPrompt = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeConfigModule;
                CardView.AnonymousClass1 anonymousClass12 = new CardView.AnonymousClass1(provider, (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get());
                Camera2MetadataProvider camera2MetadataProvider = (Camera2MetadataProvider) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2MetadataCacheProvider.get();
                Camera2ErrorProcessor camera2ErrorProcessor = (Camera2ErrorProcessor) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2ErrorProcessorProvider.get();
                Camera2Quirks camera2Quirks = (Camera2Quirks) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2QuirksProvider.get();
                SystemTimeSource systemTimeSource = (SystemTimeSource) daggerCameraPipeComponent$CameraPipeComponentImpl.systemTimeSourceProvider.get();
                CameraPipe$CameraInteropConfig cameraPipe$CameraInteropConfig = ((CameraPipe$Config) biometricPrompt.mClientFragmentManager).cameraInteropConfig;
                MathKt.checkNotNullFromProvides(cameraPipe$CameraInteropConfig);
                Threads threads3 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                camera2MetadataProvider.getClass();
                camera2ErrorProcessor.getClass();
                camera2Quirks.getClass();
                systemTimeSource.getClass();
                threads3.getClass();
                LockableDatabase lockableDatabase = new LockableDatabase();
                lockableDatabase.mDb = anonymousClass12;
                lockableDatabase.mReadLock = camera2MetadataProvider;
                lockableDatabase.mWriteLock = camera2ErrorProcessor;
                lockableDatabase.context = camera2Quirks;
                lockableDatabase.storageFilesProvider = systemTimeSource;
                lockableDatabase.inTransaction = cameraPipe$CameraInteropConfig;
                lockableDatabase.mSchemaDefinition = threads3;
                lockableDatabase.generalSettingsManager = new CompletableDeferredImpl();
                Camera2ErrorProcessor camera2ErrorProcessor2 = (Camera2ErrorProcessor) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2ErrorProcessorProvider.get();
                Dispatcher dispatcher = new Dispatcher(daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraManagerProvider, (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get(), (Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                SystemTimeSource systemTimeSource2 = (SystemTimeSource) daggerCameraPipeComponent$CameraPipeComponentImpl.systemTimeSourceProvider.get();
                AndroidDevicePolicyManagerWrapper androidDevicePolicyManagerWrapper = (AndroidDevicePolicyManagerWrapper) daggerCameraPipeComponent$CameraPipeComponentImpl.provideDevicePolicyManagerWrapperProvider.get();
                AudioRestrictionControllerImpl audioRestrictionControllerImpl = (AudioRestrictionControllerImpl) daggerCameraPipeComponent$CameraPipeComponentImpl.audioRestrictionControllerImplProvider.get();
                CameraPipe$CameraInteropConfig cameraPipe$CameraInteropConfig2 = ((CameraPipe$Config) biometricPrompt.mClientFragmentManager).cameraInteropConfig;
                MathKt.checkNotNullFromProvides(cameraPipe$CameraInteropConfig2);
                return new RetryingCameraStateOpenerImpl(lockableDatabase, camera2ErrorProcessor2, dispatcher, systemTimeSource2, androidDevicePolicyManagerWrapper, audioRestrictionControllerImpl, cameraPipe$CameraInteropConfig2, (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get());
            case 16:
                return new Camera2Quirks((Camera2MetadataProvider) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2MetadataCacheProvider.get(), (StrictMode) daggerCameraPipeComponent$CameraPipeComponentImpl.provideStrictModeProvider.get());
            case 17:
                MathKt.checkNotNullFromProvides(((CameraPipe$Config) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeConfigModule.mClientFragmentManager).flags);
                return new StrictMode();
            case 18:
                Object systemService2 = daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext().getSystemService("device_policy");
                systemService2.getClass();
                return new AndroidDevicePolicyManagerWrapper((DevicePolicyManager) systemService2);
            case 19:
                return new AudioRestrictionControllerImpl((Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get(), (CameraPipeLifetime) daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeLifetimeProvider.get(), (Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get());
            case 20:
                return new Camera2DeviceCloserImpl((Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get(), (Camera2Quirks) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2QuirksProvider.get(), (RetryingCameraStateOpenerImpl) daggerCameraPipeComponent$CameraPipeComponentImpl.retryingCameraStateOpenerImplProvider.get());
            case 21:
                daggerCameraPipeComponent$CameraPipeComponentImpl.cameraPipeContextContext();
                Threads threads4 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                CameraBackendsImpl cameraBackendsImpl = (CameraBackendsImpl) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraBackendsProvider.get();
                threads4.getClass();
                cameraBackendsImpl.getClass();
                return new CameraPipeModule$Companion$provideCameraContext$1();
            case 22:
                return new CameraSurfaceManager();
            case 23:
                return new ConcurrentSessionSequencers();
            default:
                throw new AssertionError(i);
        }
    }

    public List getChangeLog() {
        String num;
        Resources resources = (Resources) this.array;
        int i = this.size;
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            InputStream openRawResource = resources.openRawResource(i);
            try {
                newPullParser.setInput(openRawResource, null);
                return new XmlParser(newPullParser, -1).readChangeLog();
            } finally {
                openRawResource.close();
            }
        } catch (IOException e) {
            e = e;
            StringBuilder sb = new StringBuilder("Error parsing XML resource: ");
            try {
                num = resources.getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                num = Integer.toString(i);
            }
            sb.append(num);
            throw new SerializationException(sb.toString(), e);
        } catch (XmlPullParserException e2) {
            e = e2;
            StringBuilder sb2 = new StringBuilder("Error parsing XML resource: ");
            num = resources.getResourceName(i);
            sb2.append(num);
            throw new SerializationException(sb2.toString(), e);
        }
    }

    public List getChangeLogSince(int i) {
        String num;
        Resources resources = (Resources) this.array;
        int i2 = this.size;
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            InputStream openRawResource = resources.openRawResource(i2);
            try {
                newPullParser.setInput(openRawResource, null);
                return new XmlParser(newPullParser, i).readChangeLog();
            } finally {
                openRawResource.close();
            }
        } catch (IOException e) {
            e = e;
            StringBuilder sb = new StringBuilder("Error parsing XML resource: ");
            try {
                num = resources.getResourceName(i2);
            } catch (Resources.NotFoundException unused) {
                num = Integer.toString(i2);
            }
            sb.append(num);
            throw new SerializationException(sb.toString(), e);
        } catch (XmlPullParserException e2) {
            e = e2;
            StringBuilder sb2 = new StringBuilder("Error parsing XML resource: ");
            num = resources.getResourceName(i2);
            sb2.append(num);
            throw new SerializationException(sb2.toString(), e);
        }
    }

    public void heapifyUp(int i, AsyncTimeout asyncTimeout) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            AsyncTimeout asyncTimeout2 = ((AsyncTimeout[]) this.array)[i2];
            asyncTimeout2.getClass();
            if (Intrinsics.compare(0L, asyncTimeout.timeoutAt - asyncTimeout2.timeoutAt) <= 0) {
                break;
            }
            asyncTimeout2.index = i;
            ((AsyncTimeout[]) this.array)[i] = asyncTimeout2;
            i = i2;
        }
        ((AsyncTimeout[]) this.array)[i] = asyncTimeout;
        asyncTimeout.index = i;
    }

    public void onUpgrade(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i, int i2) {
        ((RoomConnectionManager) this.array).onMigrate(new SupportSQLiteConnection(frameworkSQLiteDatabase), i, i2);
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        ((BottomSheetBehavior) this.array).setState(this.size);
        return true;
    }

    public JsonElement read() {
        JsonElement jsonObject;
        Object obj;
        RulerTrackingMap rulerTrackingMap = (RulerTrackingMap) this.array;
        byte peekNextToken = rulerTrackingMap.peekNextToken();
        if (peekNextToken == 1) {
            return readValue(true);
        }
        if (peekNextToken == 0) {
            return readValue(false);
        }
        if (peekNextToken != 6) {
            if (peekNextToken == 8) {
                return readArray();
            }
            RulerTrackingMap.fail$default(rulerTrackingMap, "Cannot read Json element because of unexpected ".concat(WriteModeKt.tokenDescription(peekNextToken)), 0, null, 6);
            throw null;
        }
        int i = this.size + 1;
        this.size = i;
        if (i == 200) {
            JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this, null);
            DeepRecursiveScopeImpl deepRecursiveScopeImpl = new DeepRecursiveScopeImpl();
            deepRecursiveScopeImpl.function = jsonTreeReader$readDeepRecursive$1;
            deepRecursiveScopeImpl.cont = deepRecursiveScopeImpl;
            CoroutineSingletons coroutineSingletons = ResultKt.UNDEFINED_RESULT;
            deepRecursiveScopeImpl.result = coroutineSingletons;
            while (true) {
                obj = deepRecursiveScopeImpl.result;
                Continuation continuation = deepRecursiveScopeImpl.cont;
                if (continuation == null) {
                    break;
                }
                if (Intrinsics.areEqual(coroutineSingletons, obj)) {
                    try {
                        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$12 = deepRecursiveScopeImpl.function;
                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, jsonTreeReader$readDeepRecursive$12);
                        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$13 = new JsonTreeReader$readDeepRecursive$1(jsonTreeReader$readDeepRecursive$12.this$0, continuation);
                        jsonTreeReader$readDeepRecursive$13.L$0 = deepRecursiveScopeImpl;
                        Object invokeSuspend = jsonTreeReader$readDeepRecursive$13.invokeSuspend(Unit.INSTANCE);
                        if (invokeSuspend != CoroutineSingletons.COROUTINE_SUSPENDED) {
                            continuation.resumeWith(invokeSuspend);
                        }
                    } catch (Throwable th) {
                        continuation.resumeWith(new Result.Failure(th));
                    }
                } else {
                    deepRecursiveScopeImpl.result = coroutineSingletons;
                    continuation.resumeWith(obj);
                }
            }
            ResultKt.throwOnFailure(obj);
            jsonObject = (JsonElement) obj;
        } else {
            byte consumeNextToken = rulerTrackingMap.consumeNextToken((byte) 6);
            if (rulerTrackingMap.peekNextToken() == 4) {
                RulerTrackingMap.fail$default(rulerTrackingMap, "Unexpected leading comma", 0, null, 6);
                throw null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (true) {
                if (!rulerTrackingMap.canConsumeValue()) {
                    break;
                }
                String consumeString = rulerTrackingMap.consumeString();
                rulerTrackingMap.consumeNextToken((byte) 5);
                linkedHashMap.put(consumeString, read());
                consumeNextToken = rulerTrackingMap.consumeNextToken();
                if (consumeNextToken != 4) {
                    if (consumeNextToken != 7) {
                        RulerTrackingMap.fail$default(rulerTrackingMap, "Expected end of the object or comma", 0, null, 6);
                        throw null;
                    }
                }
            }
            if (consumeNextToken == 6) {
                rulerTrackingMap.consumeNextToken((byte) 7);
            } else if (consumeNextToken == 4) {
                WriteModeKt.invalidTrailingComma(rulerTrackingMap, "object");
                throw null;
            }
            jsonObject = new JsonObject(linkedHashMap);
        }
        this.size--;
        return jsonObject;
    }

    public JsonArray readArray() {
        RulerTrackingMap rulerTrackingMap = (RulerTrackingMap) this.array;
        byte consumeNextToken = rulerTrackingMap.consumeNextToken();
        if (rulerTrackingMap.peekNextToken() == 4) {
            RulerTrackingMap.fail$default(rulerTrackingMap, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        while (rulerTrackingMap.canConsumeValue()) {
            arrayList.add(read());
            consumeNextToken = rulerTrackingMap.consumeNextToken();
            if (consumeNextToken != 4) {
                boolean z = consumeNextToken == 9;
                int i = rulerTrackingMap.size;
                if (!z) {
                    RulerTrackingMap.fail$default(rulerTrackingMap, "Expected end of the array or comma", i, null, 4);
                    throw null;
                }
            }
        }
        if (consumeNextToken == 8) {
            rulerTrackingMap.consumeNextToken((byte) 9);
        } else if (consumeNextToken == 4) {
            WriteModeKt.invalidTrailingComma(rulerTrackingMap, "array");
            throw null;
        }
        return new JsonArray(arrayList);
    }

    public JsonPrimitive readValue(boolean z) {
        RulerTrackingMap rulerTrackingMap = (RulerTrackingMap) this.array;
        String consumeStringLenient = !z ? rulerTrackingMap.consumeStringLenient() : rulerTrackingMap.consumeString();
        return (z || !Intrinsics.areEqual(consumeStringLenient, "null")) ? new JsonLiteral(consumeStringLenient, z) : JsonNull.INSTANCE;
    }

    public void release() {
        CharArrayPool charArrayPool = CharArrayPool.INSTANCE;
        char[] cArr = (char[]) this.array;
        charArrayPool.getClass();
        cArr.getClass();
        synchronized (charArrayPool) {
            int i = charArrayPool.charsTotal;
            if (cArr.length + i < ArrayPoolsKt.MAX_CHARS_IN_POOL) {
                charArrayPool.charsTotal = i + cArr.length;
                charArrayPool.arrays.addLast(cArr);
            }
        }
    }

    public void remove(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2;
        int i = asyncTimeout.index;
        if (i == -1) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            return;
        }
        int i2 = this.size;
        AsyncTimeout asyncTimeout3 = ((AsyncTimeout[]) this.array)[i2];
        asyncTimeout3.getClass();
        asyncTimeout.index = -1;
        ((AsyncTimeout[]) this.array)[i2] = null;
        this.size = i2 - 1;
        if (asyncTimeout == asyncTimeout3) {
            return;
        }
        int compare = Intrinsics.compare(0L, asyncTimeout3.timeoutAt - asyncTimeout.timeoutAt);
        if (compare == 0) {
            ((AsyncTimeout[]) this.array)[i] = asyncTimeout3;
            asyncTimeout3.index = i;
            return;
        }
        if (compare >= 0) {
            heapifyUp(i, asyncTimeout3);
            return;
        }
        while (true) {
            int i3 = i << 1;
            int i4 = i3 + 1;
            int i5 = this.size;
            if (i4 > i5) {
                if (i3 > i5) {
                    break;
                }
                asyncTimeout2 = ((AsyncTimeout[]) this.array)[i3];
                asyncTimeout2.getClass();
            } else {
                asyncTimeout2 = ((AsyncTimeout[]) this.array)[i3];
                asyncTimeout2.getClass();
                AsyncTimeout asyncTimeout4 = ((AsyncTimeout[]) this.array)[i4];
                asyncTimeout4.getClass();
                if (Intrinsics.compare(0L, asyncTimeout4.timeoutAt - asyncTimeout2.timeoutAt) >= 0) {
                    asyncTimeout2 = asyncTimeout4;
                }
            }
            if (Intrinsics.compare(0L, asyncTimeout2.timeoutAt - asyncTimeout3.timeoutAt) <= 0) {
                break;
            }
            int i6 = asyncTimeout2.index;
            asyncTimeout2.index = i;
            ((AsyncTimeout[]) this.array)[i] = asyncTimeout2;
            i = i6;
        }
        ((AsyncTimeout[]) this.array)[i] = asyncTimeout3;
        asyncTimeout3.index = i;
    }

    public void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mPositiveButtonText = charSequence;
        alertParams.mPositiveButtonListener = onClickListener;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 17:
                return new String((char[]) this.array, 0, this.size);
            default:
                return super.toString();
        }
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public Resource transcode(Resource resource, com.bumptech.glide.load.Options options) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) resource.get()).compress((Bitmap.CompressFormat) this.array, this.size, byteArrayOutputStream);
        resource.recycle();
        return new FileResource(byteArrayOutputStream.toByteArray());
    }

    public void write(String str) {
        str.getClass();
        int length = str.length();
        if (length == 0) {
            return;
        }
        ensureTotalCapacity(this.size, length);
        str.getChars(0, str.length(), (char[]) this.array, this.size);
        this.size += length;
    }

    public /* synthetic */ PriorityQueue(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.array = obj;
        this.size = i;
    }

    public /* synthetic */ PriorityQueue(int i, Serializable serializable, int i2) {
        this.$r8$classId = i2;
        this.size = i;
        this.array = serializable;
    }

    public PriorityQueue(ProvidedValue providedValue, RulerTrackingMap rulerTrackingMap) {
        this.$r8$classId = 18;
        this.array = rulerTrackingMap;
    }

    public PriorityQueue() {
        this.$r8$classId = 10;
        this.array = Bitmap.CompressFormat.JPEG;
        this.size = 100;
    }

    public PriorityQueue(RoomConnectionManager roomConnectionManager, int i) {
        this.$r8$classId = 7;
        this.array = roomConnectionManager;
        this.$r8$classId = 7;
        this.size = i;
    }

    public PriorityQueue(ArrayList arrayList) {
        this.$r8$classId = 19;
        this.array = arrayList;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PriorityQueue(Context context) {
        this(context, AlertDialog.resolveDialogTheme(context, 0));
        this.$r8$classId = 1;
    }

    public /* synthetic */ PriorityQueue(int i, byte b) {
        this.$r8$classId = i;
    }

    public void add(long j) {
        if (contains(j)) {
            return;
        }
        int i = this.size;
        long[] jArr = (long[]) this.array;
        if (i >= jArr.length) {
            jArr = Arrays.copyOf(jArr, Math.max(i + 1, jArr.length * 2));
            this.array = jArr;
        }
        jArr[i] = j;
        if (i >= this.size) {
            this.size = i + 1;
        }
    }

    public void remove(long j) {
        int i = this.size;
        int i2 = 0;
        while (i2 < i) {
            if (j == ((long[]) this.array)[i2]) {
                int i3 = this.size - 1;
                while (i2 < i3) {
                    long[] jArr = (long[]) this.array;
                    int i4 = i2 + 1;
                    jArr[i2] = jArr[i4];
                    i2 = i4;
                }
                this.size--;
                return;
            }
            i2++;
        }
    }
}
