package okio;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.view.View;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import coil3.Image;
import coil3.memory.MemoryCache$Key;
import coil3.memory.RealWeakMemoryCache$InternalValue;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.InternalJsonWriter;
import kotlinx.serialization.json.internal.StringOpsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.SparseItemUtil$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PriorityQueue implements AccessibilityViewCommand, InternalJsonWriter, Function {
    public final /* synthetic */ int $r8$classId;
    public Object array;
    public int size;

    public PriorityQueue(int i, byte b) {
        this.$r8$classId = i;
        switch (i) {
            case 7:
                this.array = new LinkedHashMap();
                break;
            case 11:
                this.size = 0;
                this.array = new StringBuilder();
                break;
            default:
                this.size = 1;
                this.array = Collections.singletonList(null);
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

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
        subscriptionEntity.getClass();
        int i = this.size;
        CompletableFromAction completableFromAction = new CompletableFromAction(new SparseItemUtil$$ExternalSyntheticLambda3(subscriptionEntity, i, (SubscriptionManager) this.array), 0);
        if (i != 0) {
            ExtractorHelper.getChannelInfo(subscriptionEntity.serviceId, subscriptionEntity.url, false);
        }
        return completableFromAction;
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
                    RealWeakMemoryCache$InternalValue realWeakMemoryCache$InternalValue = (RealWeakMemoryCache$InternalValue) CollectionsKt.firstOrNull(arrayList);
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

    public void ensureTotalCapacity$1(int i, int i2) {
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

    public void remove(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2;
        int i = asyncTimeout.index;
        if (i == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
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

    public String toString() {
        switch (this.$r8$classId) {
            case 9:
                return new String((char[]) this.array, 0, this.size);
            default:
                return super.toString();
        }
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(String str) {
        str.getClass();
        int length = str.length();
        if (length == 0) {
            return;
        }
        ensureTotalCapacity$1(this.size, length);
        str.getChars(0, str.length(), (char[]) this.array, this.size);
        this.size += length;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c) {
        ensureTotalCapacity$1(this.size, 1);
        char[] cArr = (char[]) this.array;
        int i = this.size;
        this.size = i + 1;
        cArr[i] = c;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long j) {
        write(String.valueOf(j));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeQuoted(String str) {
        int i;
        str.getClass();
        ensureTotalCapacity$1(this.size, str.length() + 2);
        char[] cArr = (char[]) this.array;
        int i2 = this.size;
        int i3 = i2 + 1;
        cArr[i2] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i3);
        int i4 = length + i3;
        int i5 = i3;
        while (i5 < i4) {
            char c = cArr[i5];
            byte[] bArr = StringOpsKt.ESCAPE_MARKERS;
            if (c < bArr.length && bArr[c] != 0) {
                int length2 = str.length();
                for (int i6 = i5 - i3; i6 < length2; i6++) {
                    ensureTotalCapacity$1(i5, 2);
                    char charAt = str.charAt(i6);
                    byte[] bArr2 = StringOpsKt.ESCAPE_MARKERS;
                    if (charAt < bArr2.length) {
                        byte b = bArr2[charAt];
                        if (b == 0) {
                            i = i5 + 1;
                            ((char[]) this.array)[i5] = charAt;
                        } else {
                            if (b == 1) {
                                String str2 = StringOpsKt.ESCAPE_STRINGS[charAt];
                                str2.getClass();
                                ensureTotalCapacity$1(i5, str2.length());
                                str2.getChars(0, str2.length(), (char[]) this.array, i5);
                                int length3 = str2.length() + i5;
                                this.size = length3;
                                i5 = length3;
                            } else {
                                char[] cArr2 = (char[]) this.array;
                                cArr2[i5] = '\\';
                                cArr2[i5 + 1] = (char) b;
                                i5 += 2;
                                this.size = i5;
                            }
                        }
                    } else {
                        i = i5 + 1;
                        ((char[]) this.array)[i5] = charAt;
                    }
                    i5 = i;
                }
                ensureTotalCapacity$1(i5, 1);
                ((char[]) this.array)[i5] = '\"';
                this.size = i5 + 1;
                return;
            }
            i5++;
        }
        cArr[i4] = '\"';
        this.size = i4 + 1;
    }

    public /* synthetic */ PriorityQueue(int i, Object obj, int i2) {
        this.$r8$classId = i2;
        this.size = i;
        this.array = obj;
    }

    public /* synthetic */ PriorityQueue(Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.array = obj;
        this.size = i;
    }

    public PriorityQueue(FileMetadata fileMetadata, int i) {
        this.$r8$classId = 6;
        this.array = fileMetadata;
        this.$r8$classId = 6;
        this.size = i;
    }

    public /* synthetic */ PriorityQueue(char c, int i) {
        this.$r8$classId = i;
    }

    public PriorityQueue(int i, ArrayList arrayList) {
        this.$r8$classId = i;
        switch (i) {
            case 10:
                this.array = arrayList;
                break;
            default:
                this.size = 0;
                this.array = arrayList;
                break;
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
