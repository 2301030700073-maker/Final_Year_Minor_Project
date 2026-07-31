package org.jetbrains.compose.resources;

import kotlin.text.Regex;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StringResourcesUtilsKt {
    public static final Regex SimpleStringFormatRegex = new Regex("%(\\d+)\\$[ds]");
    public static final AsyncCache stringItemsCache = new AsyncCache();
}
