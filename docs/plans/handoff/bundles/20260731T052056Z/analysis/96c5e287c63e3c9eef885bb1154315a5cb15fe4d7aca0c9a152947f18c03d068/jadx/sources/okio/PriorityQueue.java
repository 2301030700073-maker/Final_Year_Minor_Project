package okio;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.Drawable;
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
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import coil3.Image;
import coil3.memory.MemoryCache$Key;
import coil3.memory.RealWeakMemoryCache$InternalValue;
import com.airbnb.lottie.utils.DropShadow;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.DeepRecursiveKt;
import kotlin.DeepRecursiveScopeImpl;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.internal.ArrayPoolsKt;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PriorityQueue implements AccessibilityViewCommand {
    public final /* synthetic */ int $r8$classId;
    public Object array;
    public int size;

    public PriorityQueue(int i, byte b) {
        this.$r8$classId = i;
        switch (i) {
            case 9:
                this.size = 255;
                this.array = null;
                break;
            default:
                this.array = new LinkedHashMap();
                break;
        }
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

    public void cleanUpIfNecessary() {
        int i = this.size;
        this.size = i + 1;
        if (i >= 10) {
            this.size = 0;
            Iterator it = ((LinkedHashMap) this.array).values().iterator();
            while (it.hasNext()) {
                ArrayList arrayList = (ArrayList) it.next();
                if (arrayList.size() <= 1) {
                    RealWeakMemoryCache$InternalValue realWeakMemoryCache$InternalValue = (RealWeakMemoryCache$InternalValue) CollectionsKt.firstOrNull((List) arrayList);
                    if ((realWeakMemoryCache$InternalValue != null ? (Image) realWeakMemoryCache$InternalValue.image.get() : null) == null) {
                        it.remove();
                    }
                } else {
                    int size = arrayList.size();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = i3 - i2;
                        if (((RealWeakMemoryCache$InternalValue) arrayList.get(i4)).image.get() == null) {
                            arrayList.remove(i4);
                            i2++;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        it.remove();
                    }
                }
            }
        }
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
                alertController.mIconId = 0;
                ImageView imageView = alertController.mIconView;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    alertController.mIconView.setImageDrawable(drawable);
                }
            }
            int i = alertParams.mIconId;
            if (i != 0) {
                alertController.mIcon = null;
                alertController.mIconId = i;
                ImageView imageView2 = alertController.mIconView;
                if (imageView2 != null) {
                    if (i != 0) {
                        imageView2.setVisibility(0);
                        alertController.mIconView.setImageResource(alertController.mIconId);
                    } else {
                        imageView2.setVisibility(8);
                    }
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
        if (alertParams.mItems != null || alertParams.mAdapter != null) {
            final AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
            if (alertParams.mIsMultiChoice) {
                final int i2 = alertController.mMultiChoiceItemLayout;
                final CharSequence[] charSequenceArr = alertParams.mItems;
                listAdapter = new ArrayAdapter(contextThemeWrapper2, i2, charSequenceArr) { // from class: androidx.appcompat.app.AlertController.AlertParams.1
                    @Override // android.widget.ArrayAdapter, android.widget.Adapter
                    public final View getView(int i3, View view2, ViewGroup viewGroup) {
                        View view3 = super.getView(i3, view2, viewGroup);
                        boolean[] zArr = AlertParams.this.mCheckedItems;
                        if (zArr != null && zArr[i3]) {
                            recycleListView.setItemChecked(i3, true);
                        }
                        return view3;
                    }
                };
            } else {
                int i3 = alertParams.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                listAdapter = alertParams.mAdapter;
                if (listAdapter == null) {
                    listAdapter = new AlertController.CheckedItemAdapter(contextThemeWrapper2, i3, R.id.text1, alertParams.mItems);
                }
            }
            alertController.mAdapter = listAdapter;
            alertController.mCheckedItem = alertParams.mCheckedItem;
            if (alertParams.mOnClickListener != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i4, long j) {
                        AlertParams alertParams2 = AlertParams.this;
                        DialogInterface.OnClickListener onClickListener = alertParams2.mOnClickListener;
                        AlertController alertController2 = alertController;
                        onClickListener.onClick(alertController2.mDialog, i4);
                        if (alertParams2.mIsSingleChoice) {
                            return;
                        }
                        alertController2.mDialog.dismiss();
                    }
                });
            } else if (alertParams.mOnCheckboxClickListener != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i4, long j) {
                        AlertParams alertParams2 = AlertParams.this;
                        boolean[] zArr = alertParams2.mCheckedItems;
                        RecycleListView recycleListView2 = recycleListView;
                        if (zArr != null) {
                            zArr[i4] = recycleListView2.isItemChecked(i4);
                        }
                        alertParams2.mOnCheckboxClickListener.onClick(alertController.mDialog, i4, recycleListView2.isItemChecked(i4));
                    }
                });
            }
            if (alertParams.mIsSingleChoice) {
                recycleListView.setChoiceMode(1);
            } else if (alertParams.mIsMultiChoice) {
                recycleListView.setChoiceMode(2);
            }
            alertController.mListView = recycleListView;
        }
        View view2 = alertParams.mView;
        if (view2 != null) {
            alertController.mView = view2;
            alertController.mViewSpacingSpecified = false;
        }
        alertDialog.setCancelable(alertParams.mCancelable);
        if (alertParams.mCancelable) {
            alertDialog.setCanceledOnTouchOutside(true);
        }
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(alertParams.mOnDismissListener);
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

    public boolean hasShadow() {
        return ((DropShadow) this.array) != null;
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
        ((FileMetadata) this.array).onMigrate(new SupportSQLiteConnection(frameworkSQLiteDatabase), i, i2);
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
            CoroutineSingletons coroutineSingletons = DeepRecursiveKt.UNDEFINED_RESULT;
            DeepRecursiveScopeImpl deepRecursiveScopeImpl = new DeepRecursiveScopeImpl();
            deepRecursiveScopeImpl.function = jsonTreeReader$readDeepRecursive$1;
            deepRecursiveScopeImpl.cont = deepRecursiveScopeImpl;
            CoroutineSingletons coroutineSingletons2 = DeepRecursiveKt.UNDEFINED_RESULT;
            deepRecursiveScopeImpl.result = coroutineSingletons2;
            while (true) {
                obj = deepRecursiveScopeImpl.result;
                Continuation continuation = deepRecursiveScopeImpl.cont;
                if (continuation == null) {
                    break;
                }
                if (Intrinsics.areEqual(coroutineSingletons2, obj)) {
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
                    deepRecursiveScopeImpl.result = coroutineSingletons2;
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

    /* JADX WARN: Removed duplicated region for block: B:12:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0086 -> B:10:0x008a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object readObject(kotlin.DeepRecursiveScopeImpl r14, kotlin.coroutines.jvm.internal.BaseContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.PriorityQueue.readObject(kotlin.DeepRecursiveScopeImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
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

    public void set(MemoryCache$Key memoryCache$Key, Image image, Map map, long j) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.array;
        Object obj = linkedHashMap.get(memoryCache$Key);
        if (obj == null) {
            obj = new ArrayList();
            linkedHashMap.put(memoryCache$Key, obj);
        }
        ArrayList arrayList = (ArrayList) obj;
        RealWeakMemoryCache$InternalValue realWeakMemoryCache$InternalValue = new RealWeakMemoryCache$InternalValue(new WeakReference(image), map, j);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                RealWeakMemoryCache$InternalValue realWeakMemoryCache$InternalValue2 = (RealWeakMemoryCache$InternalValue) arrayList.get(i);
                if (j < realWeakMemoryCache$InternalValue2.size) {
                    i++;
                } else if (realWeakMemoryCache$InternalValue2.image.get() == image) {
                    arrayList.set(i, realWeakMemoryCache$InternalValue);
                } else {
                    arrayList.add(i, realWeakMemoryCache$InternalValue);
                }
            }
        } else {
            arrayList.add(realWeakMemoryCache$InternalValue);
        }
        cleanUpIfNecessary();
    }

    public void setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mItems = charSequenceArr;
        alertParams.mOnCheckboxClickListener = onMultiChoiceClickListener;
        alertParams.mCheckedItems = zArr;
        alertParams.mIsMultiChoice = true;
    }

    public void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        alertParams.mPositiveButtonText = charSequence;
        alertParams.mPositiveButtonListener = onClickListener;
    }

    public AlertDialog show() {
        AlertDialog create = create();
        create.show();
        return create;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 12:
                return new String((char[]) this.array, 0, this.size);
            default:
                return super.toString();
        }
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

    public PriorityQueue(JsonConfiguration jsonConfiguration, RulerTrackingMap rulerTrackingMap) {
        this.$r8$classId = 13;
        this.array = rulerTrackingMap;
    }

    public /* synthetic */ PriorityQueue(char c, int i) {
        this.$r8$classId = i;
    }

    public PriorityQueue(FileMetadata fileMetadata, int i) {
        this.$r8$classId = 7;
        this.array = fileMetadata;
        this.$r8$classId = 7;
        this.size = i;
    }

    public PriorityQueue(ArrayList arrayList) {
        this.$r8$classId = 14;
        this.array = arrayList;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PriorityQueue(Context context) {
        this(context, AlertDialog.resolveDialogTheme(context, 0));
        this.$r8$classId = 1;
    }

    public PriorityQueue(Context context, int i) {
        this.$r8$classId = 1;
        this.array = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
        this.size = i;
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
