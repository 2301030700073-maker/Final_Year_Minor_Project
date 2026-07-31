package androidx.room;

import android.graphics.Rect;
import android.view.View;
import androidx.emoji2.text.DefaultGlyphChecker;
import androidx.emoji2.text.EmojiCompat;
import androidx.recyclerview.widget.OrientationHelper$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteConnection;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import java.lang.reflect.Method;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RoomOpenDelegate {
    public final Object identityHash;
    public final Object legacyIdentityHash;
    public int version;

    public RoomOpenDelegate(RecyclerView.LayoutManager layoutManager) {
        this.version = Integer.MIN_VALUE;
        this.legacyIdentityHash = new Rect();
        this.identityHash = layoutManager;
    }

    public static RoomOpenDelegate createOrientationHelper(RecyclerView.LayoutManager layoutManager, int i) {
        if (i == 0) {
            return new OrientationHelper$1(layoutManager, 0);
        }
        int i2 = 1;
        if (i == 1) {
            return new OrientationHelper$1(layoutManager, i2);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("invalid orientation");
        return null;
    }

    public abstract void createAllTables(SQLiteConnection sQLiteConnection);

    public abstract void dropAllTables(SQLiteConnection sQLiteConnection);

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.version) {
            return 0;
        }
        return getTotalSpace() - this.version;
    }

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChildren(int i);

    public abstract void onCreate(SQLiteConnection sQLiteConnection);

    public abstract void onOpen(SQLiteConnection sQLiteConnection);

    public abstract void onPostMigrate(SQLiteConnection sQLiteConnection);

    public abstract void onPreMigrate(SQLiteConnection sQLiteConnection);

    public abstract ValidationResult onValidateSchema(SQLiteConnection sQLiteConnection);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class ValidationResult {
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(SerializationConfig serializationConfig, String str) {
            this.isValid = MapperFeature.USE_STD_BEAN_NAMING.enabledIn(serializationConfig._mapperFeatures);
            this.expectedFoundMsg = str;
        }

        public static String legacyManglePropertyName(int i, String str) {
            int length = str.length();
            if (length == i) {
                return null;
            }
            char charAt = str.charAt(i);
            char lowerCase = Character.toLowerCase(charAt);
            if (charAt == lowerCase) {
                return str.substring(i);
            }
            StringBuilder sb = new StringBuilder(length - i);
            sb.append(lowerCase);
            while (true) {
                i++;
                if (i >= length) {
                    break;
                }
                char charAt2 = str.charAt(i);
                char lowerCase2 = Character.toLowerCase(charAt2);
                if (charAt2 == lowerCase2) {
                    sb.append((CharSequence) str, i, length);
                    break;
                }
                sb.append(lowerCase2);
            }
            return sb.toString();
        }

        public static String stdManglePropertyName(int i, String str) {
            int length = str.length();
            if (length == i) {
                return null;
            }
            char charAt = str.charAt(i);
            char lowerCase = Character.toLowerCase(charAt);
            if (charAt == lowerCase) {
                return str.substring(i);
            }
            int i2 = i + 1;
            if (i2 < length && Character.isUpperCase(str.charAt(i2))) {
                return str.substring(i);
            }
            StringBuilder sb = new StringBuilder(length - i);
            sb.append(lowerCase);
            sb.append((CharSequence) str, i2, length);
            return sb.toString();
        }

        public String findNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
            Class<?> returnType = annotatedMethod._method.getReturnType();
            if ((returnType == Boolean.class || returnType == Boolean.TYPE) && str.startsWith("is")) {
                return this.isValid ? stdManglePropertyName(2, str) : legacyManglePropertyName(2, str);
            }
            return null;
        }

        public String findNameForMutator(String str) {
            String str2 = this.expectedFoundMsg;
            if (str2 == null || !str.startsWith(str2)) {
                return null;
            }
            return this.isValid ? stdManglePropertyName(str2.length(), str) : legacyManglePropertyName(str2.length(), str);
        }

        public String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
            Method method = annotatedMethod._method;
            if (!str.startsWith("get")) {
                return null;
            }
            if ("getCallbacks".equals(str)) {
                Class<?> returnType = method.getReturnType();
                if (returnType.isArray()) {
                    String name = returnType.getComponentType().getName();
                    if (name.contains(".cglib") && (name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib") || name.startsWith("org.springframework.cglib"))) {
                        return null;
                    }
                }
            } else if ("getMetaClass".equals(str) && method.getReturnType().getName().startsWith("groovy.lang")) {
                return null;
            }
            return this.isValid ? stdManglePropertyName(3, str) : legacyManglePropertyName(3, str);
        }

        public ValidationResult(String str, boolean z) {
            this.isValid = z;
            this.expectedFoundMsg = str;
        }
    }

    public RoomOpenDelegate(int i, String str, String str2) {
        this.version = i;
        this.identityHash = str;
        this.legacyIdentityHash = str2;
    }

    public RoomOpenDelegate(EmojiCompat.MetadataRepoLoader metadataRepoLoader) {
        this.version = 0;
        this.legacyIdentityHash = new DefaultGlyphChecker();
        this.identityHash = metadataRepoLoader;
    }
}
