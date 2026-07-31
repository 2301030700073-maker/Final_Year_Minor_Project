package org.jetbrains.compose.resources;

import kotlin.text.Regex;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StringResourcesUtilsKt {
    public static final Regex SimpleStringFormatRegex = new Regex("%(\\d+)\\$[ds]");
    public static final SoftPool stringItemsCache = new SoftPool();
}
