---
title: "Listing Pods in Kubernetes using Fabric8 Kubernetes Java Client"
date: 2020-08-29T20:00:36+05:30
draft: false
tags: ["java","kubernetes"]
---

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<p align="center">
  <a href="http://fabric8.io/">
  	<img src="https://github.com/fabric8io/fabric8/blob/048693944325e1a609599fceeadfe987e9cc53f8/docs/images/cover/cover_small.png" alt="fabric8 logo"/>
  </a>
</p>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

Fabric8 Kubernetes Client is one of the most popular Java Client libraries for Kubernetes on the internet. In fact, it's also one of the oldest client libraries after the popular client-go 

# Getting Fabric8 Kubernetes Java Client:

- You can find Kubernetes Java Client on maven central as usual. Then you can add it as a dependency in your project. For maven project, you can add it like this: 
```xml
<dependency>
  <groupId>io.fabric8</groupId>
  <artifactId>kubernetes-client</artifactId>
  <version>4.10.3</version>
</dependency>
```

- Create a class in your project named ListPods.java and add the following code: 

```java
package io.fabric8;

import io.fabric8.kubernetes.api.model.PodList;
import io.fabric8.kubernetes.client.DefaultKubernetesClient;
import io.fabric8.kubernetes.client.KubernetesClient;

public class PodListTest {
    public static void main(String[] args) {
        try (KubernetesClient client = new DefaultKubernetesClient()) {
            PodList podList = client.pods().inAnyNamespace().list();
            System.out.println("Found " + podList.getItems().size() + " pods.");
        }
    }
}
```

When you run this code, you should be able to see your Pods in specified namespace listed.

Thanks.
