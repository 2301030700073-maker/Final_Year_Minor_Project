package org.chromium.support_lib_boundary;

import android.content.Context;
import android.webkit.WebView;
import androidx.compose.ui.Modifier;
import j$.util.function.Consumer$CC;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface WebViewBuilderBoundaryInterface {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Baseline {
        public static final int DEFAULT = 0;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class Config implements Consumer<BiConsumer<Integer, Object>> {
        public String profileName;
        public boolean restrictJavascriptInterface;
        public int baseline = 0;
        public final ArrayList mJavascriptInterfaceObjects = new ArrayList();
        public final LinkedHashMap mJavascriptInterfaceNames = new LinkedHashMap();
        public final ArrayList mJavascriptInterfaceOriginPatterns = new ArrayList();

        @Override // java.util.function.Consumer
        /* renamed from: accept, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public void s(BiConsumer<Integer, Object> biConsumer) {
            biConsumer.accept(0, Integer.valueOf(this.baseline));
            biConsumer.accept(2, Boolean.valueOf(this.restrictJavascriptInterface));
            biConsumer.accept(1, new Object[]{this.mJavascriptInterfaceObjects, new ArrayList(this.mJavascriptInterfaceNames.keySet()), this.mJavascriptInterfaceOriginPatterns});
            if (this.profileName != null) {
                biConsumer.accept(3, this.profileName);
            }
        }

        public void addJavascriptInterface(Object obj, String str, List<String> list) {
            LinkedHashMap linkedHashMap = this.mJavascriptInterfaceNames;
            if (linkedHashMap.containsKey(str)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("A duplicate JavaScript interface was provided for \"", str, "\""));
                return;
            }
            this.mJavascriptInterfaceObjects.add(obj);
            linkedHashMap.put(str, Boolean.TRUE);
            this.mJavascriptInterfaceOriginPatterns.add(list);
        }

        public /* synthetic */ Consumer andThen(Consumer consumer) {
            return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface ConfigField {
        public static final int BASELINE = 0;
        public static final int JAVASCRIPT_INTERFACE = 1;
        public static final int PROFILE_NAME = 3;
        public static final int RESTRICT_JAVASCRIPT_INTERFACE = 2;
    }

    WebView build(Context context, Consumer<BiConsumer<Integer, Object>> consumer);
}
