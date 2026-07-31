package com.braze.reactbridge;

import com.braze.models.FeatureFlag;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* compiled from: FeatureFlagUtil.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"FEATURE_FLAG_PROPERTIES_TYPE", "", "FEATURE_FLAG_PROPERTIES_VALUE", "FEATURE_FLAG_PROPERTIES_TYPE_STRING", "FEATURE_FLAG_PROPERTIES_TYPE_NUMBER", "FEATURE_FLAG_PROPERTIES_TYPE_BOOLEAN", "convertFeatureFlag", "Lcom/facebook/react/bridge/WritableMap;", "ff", "Lcom/braze/models/FeatureFlag;", "braze_react-native-sdk_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FeatureFlagUtilKt {
    private static final String FEATURE_FLAG_PROPERTIES_TYPE = "type";
    public static final String FEATURE_FLAG_PROPERTIES_TYPE_BOOLEAN = "boolean";
    public static final String FEATURE_FLAG_PROPERTIES_TYPE_NUMBER = "number";
    public static final String FEATURE_FLAG_PROPERTIES_TYPE_STRING = "string";
    private static final String FEATURE_FLAG_PROPERTIES_VALUE = "value";

    public static final WritableMap convertFeatureFlag(FeatureFlag ff) {
        Intrinsics.checkNotNullParameter(ff, "ff");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("id", ff.getId());
        createMap.putBoolean("enabled", ff.getEnabled());
        WritableMap createMap2 = Arguments.createMap();
        Iterator<String> keys = ff.getProperties().keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject optJSONObject = ff.getProperties().optJSONObject(next);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("type", "");
                String str = optString;
                if (str != null && !StringsKt.isBlank(str)) {
                    WritableMap createMap3 = Arguments.createMap();
                    createMap3.putString("type", optString);
                    if (optString != null) {
                        int hashCode = optString.hashCode();
                        if (hashCode != -1034364087) {
                            if (hashCode != -891985903) {
                                if (hashCode == 64711720 && optString.equals("boolean")) {
                                    Intrinsics.checkNotNull(next);
                                    Boolean booleanProperty = ff.getBooleanProperty(next);
                                    if (booleanProperty != null) {
                                        createMap3.putBoolean("value", booleanProperty.booleanValue());
                                    }
                                }
                            } else if (optString.equals("string")) {
                                Intrinsics.checkNotNull(next);
                                createMap3.putString("value", ff.getStringProperty(next));
                            }
                        } else if (optString.equals("number")) {
                            Intrinsics.checkNotNull(next);
                            Number numberProperty = ff.getNumberProperty(next);
                            if (numberProperty != null) {
                                createMap3.putDouble("value", numberProperty.doubleValue());
                            }
                        }
                    }
                    Intrinsics.checkNotNull(next);
                    createMap2.putMap(next, createMap3);
                }
            }
        }
        createMap.putMap(FeatureFlag.PROPERTIES, createMap2);
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }
}
