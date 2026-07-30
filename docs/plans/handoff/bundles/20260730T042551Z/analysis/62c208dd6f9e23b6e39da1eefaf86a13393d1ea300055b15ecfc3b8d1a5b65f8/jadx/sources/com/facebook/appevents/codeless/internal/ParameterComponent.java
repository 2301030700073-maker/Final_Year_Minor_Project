package com.facebook.appevents.codeless.internal;

import defpackage.C0173Do;
import defpackage.C2819gd;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ParameterComponent {
    public static final Companion Companion = new Companion(null);
    private static final String PARAMETER_NAME_KEY = "name";
    private static final String PARAMETER_PATH_KEY = "path";
    private static final String PARAMETER_VALUE_KEY = "value";
    private final String name;
    private final List<PathComponent> path;
    private final String pathType;
    private final String value;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    public ParameterComponent(JSONObject jSONObject) {
        int length;
        C0173Do.m401try(jSONObject, "component");
        String string = jSONObject.getString("name");
        C0173Do.m399new(string, "component.getString(PARAMETER_NAME_KEY)");
        this.name = string;
        String optString = jSONObject.optString(PARAMETER_VALUE_KEY);
        C0173Do.m399new(optString, "component.optString(PARAMETER_VALUE_KEY)");
        this.value = optString;
        String optString2 = jSONObject.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE);
        C0173Do.m399new(optString2, "component.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE)");
        this.pathType = optString2;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray(PARAMETER_PATH_KEY);
        if (optJSONArray != null && (length = optJSONArray.length()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                C0173Do.m399new(jSONObject2, "jsonPathArray.getJSONObject(i)");
                arrayList.add(new PathComponent(jSONObject2));
                if (i2 >= length) {
                    break;
                } else {
                    i = i2;
                }
            }
        }
        this.path = arrayList;
    }

    public final String getName() {
        return this.name;
    }

    public final List<PathComponent> getPath() {
        return this.path;
    }

    public final String getPathType() {
        return this.pathType;
    }

    public final String getValue() {
        return this.value;
    }
}
